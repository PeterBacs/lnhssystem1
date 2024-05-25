<?php

namespace App\Http\Requests\Examination\Assign;

use Illuminate\Foundation\Http\FormRequest;

class ExamAssignUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'class'         => 'required',
            'sections'      => 'required',
            'exam_types'    => 'required',
            'subjects'      => 'required'
        ];
    }
}
