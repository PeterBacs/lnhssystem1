<?php

namespace App\Http\Controllers\WebsiteSetup;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\WebsiteSetup\SliderRepository;
use Illuminate\Support\Facades\Schema;
use App\Http\Requests\WebsiteSetup\Slider\SliderStoreRequest;
use App\Http\Requests\WebsiteSetup\Slider\SliderUpdateRequest;

class SliderController extends Controller
{
    private $sliderRepo;

    function __construct(SliderRepository $sliderRepo)
    {
        if (!Schema::hasTable('settings') && !Schema::hasTable('users')  ) {
            abort(400);
        } 
        $this->sliderRepo                  = $sliderRepo;
    }

    public function index()
    {
        $data['slider'] = $this->sliderRepo->getAll();
        $data['title'] = ___('settings.Slider');
        return view('website-setup.slider.index', compact('data'));
    }

    public function create()
    {
        $data['title']       = ___('website.Create slider');
        return view('website-setup.slider.create', compact('data'));
    }

    public function store(SliderStoreRequest $request)
    {
        $result = $this->sliderRepo->store($request);
        if($result['status']){
            return redirect()->route('slider.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function edit($id)
    {
        $data['slider']      = $this->sliderRepo->show($id);
        $data['title']       = ___('website.Edit slider');
        return view('website-setup.slider.edit', compact('data'));
    }

    public function update(SliderUpdateRequest $request, $id)
    {
        $result = $this->sliderRepo->update($request, $id);
        if($result['status']){
            return redirect()->route('slider.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function delete($id)
    {
        $result = $this->sliderRepo->destroy($id);
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
