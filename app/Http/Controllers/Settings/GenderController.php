<?php

namespace App\Http\Controllers\Settings;

use App\Models\Gender;
use Illuminate\Http\Request;
use App\Interfaces\GenderInterface;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Schema;
use App\Http\Requests\Gender\GenderStoreRequest;
use App\Http\Requests\Gender\GenderUpdateRequest;

class GenderController extends Controller
{
    private $gender;

    function __construct(GenderInterface $gender)
    {

        if (!Schema::hasTable('settings') && !Schema::hasTable('users')  ) {
            abort(400);
        } 
        $this->gender       = $gender; 
    }

    public function index()
    {
        $data['genders'] = $this->gender->getAll();
        $data['title'] = ___('settings.genders');
        return view('backend.gender.index', compact('data'));
    }

    public function create()
    {
        $data['title']       = ___('settings.create_gender');
        return view('backend.gender.create', compact('data'));
    }

    public function store(GenderStoreRequest $request)
    {
        $result = $this->gender->store($request);
        if($result['status']){
            return redirect()->route('genders.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function edit($id)
    {
        $data['gender']        = $this->gender->show($id);
        $data['title']       = ___('settings.edit_gender');
        return view('backend.gender.edit', compact('data'));
    }

    public function update(GenderUpdateRequest $request, $id)
    {
        $result = $this->gender->update($request, $id);
        if($result['status']){
            return redirect()->route('genders.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function delete($id)
    {
        $result = $this->gender->destroy($id);
        if($result['status']):
            $success[0] = $result['message'];
            $success[1] = 'success';
            $success[2] = ___('alert.deleted');
            $success[3] = ___('alert.OK');
            return response()->json($success);
        else:
            $success[0] = $result['message'];
            $success[1] = 'error';
            $success[2] = ___('alert.oops');
            return response()->json($success);
        endif;    
    }
}
