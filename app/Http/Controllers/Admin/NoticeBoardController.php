<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\RoleRepository;
use App\Repositories\NoticeBoard\NoticeBoardRepository;
use App\Http\Requests\NoticeBoard\NoticeBoardStoreRequest;

class NoticeBoardController extends Controller
{
    private $repo;
    private $roleRepo;

    function __construct(NoticeBoardRepository $repo, RoleRepository $roleRepo)
    {
        $this->repo               = $repo;
        $this->roleRepo        = $roleRepo;
    }

    public function index()
    {
        $data['title']              = ___('common.notice board');
        $data['notice-boards']      = $this->repo->getPaginateAll();
        
        return view('backend.communication.notice-board.index', compact('data'));
    }

    public function create()
    {
        $data['title']                  = ___('common.notice board create');
        $data['roles']                  = $this->roleRepo->all();
        return view('backend.communication.notice-board.create', compact('data'));
    }

    public function store(NoticeBoardStoreRequest $request)
    {
        $result = $this->repo->store($request);
        if($result['status']){
            return redirect()->route('notice-board.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function edit($id, Request $request)
    {
        $data['notice-board']              = $this->repo->show($id);
        $data['title']                  = ___('common.notice board edit');
        $data['roles']                  = $this->roleRepo->all();
        return view('backend.communication.notice-board.edit', compact('data'));
    }

    public function update(NoticeBoardStoreRequest $request, $id)
    {
        $result = $this->repo->update($request, $id);
        if($result['status']){
            return redirect()->route('notice-board.index')->with('success', $result['message']);
        }
        return back()->with('danger', $result['message']);
    }

    public function delete($id)
    {

        $result = $this->repo->destroy($id);
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
