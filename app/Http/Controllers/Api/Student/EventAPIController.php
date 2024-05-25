<?php

namespace App\Http\Controllers\Api\Student;

use App\Traits\ReturnFormatTrait;
use App\Http\Controllers\Controller;
use App\Http\Resources\EventResource;
use App\Models\Event;

class EventAPIController extends Controller
{
    use ReturnFormatTrait;
    
    public function index()
    {
        try {

            $events     = Event::active()
                        ->where('session_id', @sessionClassStudent()->session_id)
                        ->latest('id')
                        ->paginate(10);

            $data       = EventResource::collection($events)->response()->getData(true);

            return $this->responseWithSuccess(___('alert.success'), $data);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }
    
    public function show($id)
    {
        try {

            $request = request();
            $request->merge(['is_view_details' => true]);

            $events     = Event::active()->where('id', $id)->get();
            $data       = EventResource::collection($events);

            if (!@$data[0]) {
                return $this->responseWithError(___('alert.no_items_found'), []);
            }

            return $this->responseWithSuccess(___('alert.success'), @$data[0]);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }

    public function dashboardEvents()
    {
        try {

            $events         = Event::active()
                            ->where('session_id', @sessionClassStudent()->session_id)
                            ->latest('id')
                            ->take(5)
                            ->get();

            $data['events'] = EventResource::collection($events);

            return $this->responseWithSuccess(___('alert.success'), $data);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }
}
