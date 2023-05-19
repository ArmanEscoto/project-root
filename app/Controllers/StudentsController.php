<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\StudentsModel;

class StudentsController extends BaseController
{
    public function index()
    {
        $fetchStudent = new StudentsModel();
        $data['students'] = $fetchStudent->findAll();

        return view('students/list', $data);
    }

    public function createStudent()
    {
        $data['studentNumber'] = '20000_'.uniqid();
        return view('students/add', $data);
    }

    public function storeStudent()
    {
        $insertStudents = new StudentsModel();

        if($img = $this->request->getFile('studentProfile')) {
            if($img->isValid() && !$img->hasMoved()) {
                $imageName = $img->getRandomName();
                $img->move('uploads/', $imageName);
            }
        }

        $data = array (
            'student_name' => $this->request->getPost('studentName'),
            'student_id' => $this->request->getPost('studentNum'),
            'student_section' => $this->request->getPost('studentSection'),
            'student_courses' => $this->request->getPost('studentCourse'),
            'student_batch' => $this->request->getPost('studentBatch'),
            'student_grade_level' => $this->request->getPost('studentLevel'),
            'student_profile' => $imageName,

        );

        $insertStudents->insert($data);

        return redirect()->to('/students')->with('success', 'Student Added Succesfuly!');
        // store student
    }
    
    public function editStudent()
    {
        return view('students/edit');
    }

    public function updateStudent($id)
    {
        //update students
    }

    public function deleteStudent($id)
    {
        //delete student
    }

}
