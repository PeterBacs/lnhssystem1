@extends('frontend.master')
@section('title')
    {{ ___('frontend.Search Result') }}
@endsection

@section('main')
<!-- bradcam::start  -->
<div class="breadcrumb_area" data-background="{{ @globalAsset(@$sections['study_at']->upload->path, '1920X700.webp') }}">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-xl-5">
                <div class="breadcam_wrap text-center">
                    <h3>{{ ___('frontend.Search Result') }}</h3>
                    <div class="custom_breadcam">
                        <a href="{{url('/')}}" class="breadcrumb-item">{{ ___('frontend.home') }}</a>
                        <a href="#" class="breadcrumb-item">{{ ___('frontend.Search Result') }}</a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- bradcam::end  -->
<!-- search_result_area::start  -->
<div class="search_result_area section_padding">
    <div class="container">
        <div class="row justify-content-center">

            <div class="col-xl-8">
                <div class="search_result_print_view mb_30" id="printableArea">
                    <!-- search_result_print_view_header  -->
                    <div class="search_result_print_view_header">
                        <div class="search_result_print_view_header_logo">
                            <img height="75" src="{{ @globalAsset(setting('light_logo'), '154X38.webp') }}" alt="Logo">
                        </div>
                        <div class="search_result_print_view_header_content">
                            <h3>{{ setting('application_name') }}</h3>
                            {{-- <h4>{{ setting('application_name') }}</h4> --}}
                            <p>{{ setting('address') }}</p>
                        </div>
                    </div>
                    {{-- @dd($data) --}}
                    <!-- search_result_print_view_body  -->
                    <div class="search_result_print_view_body">
                        <ul class="search_result_print_view_body_list">
                            <li><span class="list_title">{{ ___('frontend.Student Name') }} :</span> <span class="list_text">{{ @$data['classSection']->student->first_name }} {{ @$data['classSection']->student->last_name }}</span></li>
                            <li><span class="list_title">{{ ___('frontend.Guardian Name') }} :</span> <span class="list_text">{{ @$data['classSection']->student->parent->guardian_name }}</span></li>
                            <li><span class="list_title">{{ ___('frontend.DOB') }} :</span> <span class="list_text">{{ dateFormat(@$data['classSection']->student->dob) }}</span></li>
                            <li><span class="list_title">{{ ___('frontend.Guardian Phone') }} :</span> <span class="list_text">{{ @$data['classSection']->student->parent->guardian_mobile }}</span></li>
                            <li><span class="list_title">{{ ___('frontend.Class(Section)') }} :</span> <span class="list_text">{{ @$data['classSection']->class->name }} ({{ @$data['classSection']->section->name }})</span></li>
                            <li><span class="list_title">{{ ___('frontend.Guardian Email') }} :</span> <span class="list_text">{{ @$data['classSection']->student->parent->guardian_email }}</span></li>
                            <li><span class="list_title">{{ ___('frontend.Result') }} :</span> <span class="list_text">{{ @$data['result'] }}</span></li>
                            <li><span class="list_title">{{ ___('frontend.GPA') }} :</span>
                                <span class="list_text">
                                    @if($data['result'] == "Passed")
                                        {{ @$data['gpa'] }}
                                    @else
                                        {{ '0.00' }}
                                    @endif
                                </span>
                            </li>
                        </ul>
                        <div class="search_result_print_view_body_info_table">
                            <h4>{{ ___('frontend.Grade Sheet') }}</h4>
                            <div class="search_result_print_view_body_info_table_info">
                                <table class="print_table_wrapper">
                                    <thead>
                                        <tr>
                                            <th class="marked_bg">{{ ___('frontend.Subject Code') }}</th>
                                            <th class="marked_bg">{{ ___('frontend.Subject Name') }}</th>
                                            <th class="marked_bg">{{ ___('frontend.Grade') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach (@$data['marks_registers'] as $item)
                                            <tr>
                                                <td>
                                                    <div class="classBox_wiz">
                                                        <h5>{{ $item->subject->code }}</h5>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="classBox_wiz">
                                                        <h5>{{ $item->subject->name }}</h5>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="classBox_wiz">
                                                        @php
                                                            $n = 0;
                                                        @endphp
                                                        @foreach ($item->marksRegisterChilds as $item)
                                                            @php
                                                                $n += $item->mark;
                                                            @endphp
                                                        @endforeach
                                                        <h5>{{ markGrade($n) }}</h5>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <div class="search_result_print_view_body_info_table_infoBtn">
                                {{-- <button class="print_btn_1" onclick="printDiv('printableArea')">{{ ___('frontend.Print Maksheet') }}</button> --}}
                                <a class="print_btn_1" href="{{ route('frontend.result.pdf-download', ['id'=>@$data['classSection']->student->id, 'type'=>$data['request']->exam, 'class'=>@$data['classSection']->class->id, 'section'=>@$data['classSection']->section->id ]) }}">
                                    {{___('common.PDF Download')}}
                                </a>
                                <a class="print_btn_2" href="{{ route('frontend.result') }}">{{ ___('frontend.Search Again') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- search_result_area::end  -->

@endsection
