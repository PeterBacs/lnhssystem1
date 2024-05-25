<?php

namespace App\Http\Controllers\WebsiteSetup;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\WebsiteSetup\DepartmentContactRepository;
use Illuminate\Support\Facades\Schema;
use App\Http\Requests\WebsiteSetup\DepartmentContact\DepartmentContactStoreRequest;
use App\Http\Requests\WebsiteSetup\DepartmentContact\DepartmentContactUpdateRequest;

class DepartmentContactController extends Controller
{
    private $depContactRepo;

    function __construct(DepartmentContactRepository $depContactRepo)
    {
        if (!Schema::hasTable('settings') && !Schema::hasTable('users')  ) {
            abort(400);
        } 
        $this->depContactRepo                  = $depContactRepo;
    }

    public function index()
    {
        $data['dep_contact'] = $this->depContactRepo->getAll();
        $data['title'] = ___('settings.Department Contact');
        return view('website-setup.department-contact.index', compact('data'));
    }

    public function create()
    {
        $data['title']       = ___('website.Create Department Contact');
        return view('website-setup.department-contact.create', compact('data'));
    }

    public function store(DepartmentContactStoreRequest $request)
    {
        $result = $this->depContactRepo->store($request);
        if($result['status']){
            return redirect()->route('department-contact.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function edit($id)
    {
        $data['dep_contact']      = $this->depContactRepo->show($id);
        $data['title']       = ___('website.Edit Department Contact');
        return view('website-setup.department-contact.edit', compact('data'));
    }

    public function update(DepartmentContactUpdateRequest $request, $id)
    {
        $result = $this->depContactRepo->update($request, $id);
        if($result['status']){
            return redirect()->route('department-contact.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function delete($id)
    {
        $result = $this->depContactRepo->destroy($id);
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
