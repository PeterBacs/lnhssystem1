@extends('backend.master')

@section('title')
    {{ @$data['title'] }}
@endsection

@section('content')
    <div class="page-content">

        {{-- bradecrumb Area S t a r t --}}
        <div class="page-header">
            <div class="row">
                <div class="col-sm-6">
                    <h4 class="bradecrumb-title mb-1">{{ $data['title'] }}</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ ___('common.home') }}</a></li>
                        <li class="breadcrumb-item">{{ $data['title'] }}</li>
                    </ol>
                </div>
            </div>
        </div>
        {{-- bradecrumb Area E n d --}}

        <div class="card ot-card">

            <div class="card-body text-center">
                <div class="row">
                    <div class="col-md-6 text-center current-version p-3">
                        
                            <h5 class="bold" style="font-size: 22px; font-weight: bold;">{{ ___('common.current_version') }}</h5>
                            <p class="font-medium bold">{{Setting('current_version') ?? 'v1.2'}}</p>
                       
                    </div>
                    <div class="col-md-6 text-center latest-version p-3">
                            <h5 class="bold" style="font-size: 22px; font-weight: bold;">{{ ___('common.latest_version') }}</h5>
                            <p class="font-medium bold">{{config('site.latest_version')}}</p>
                    </div>
                </div>
                @if((Setting('current_version') ?? 'v1.2') != config('site.latest_version'))
                <h3 class="mb-3 mt-5">{{___("settings.Are you sure, want to database update ?")}}</h3>
                <a class="btn ot-btn-primary" href="{{route('settings.install-update')}}"> {{___('settings.Database Update')}}</a>
                @else    
                <h3 class="mt-3 text-success">{{___("settings.Everything is up to date")}}..</h3>
                @endif
            </div>
        </div>
    </div>
@endsection
