<?php

namespace App\Http\Controllers;
use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    //
    public function showall()
    {
        $employees = Employee::all();
    return response()->json(['Employees' => $employees], 200);
    }


}
