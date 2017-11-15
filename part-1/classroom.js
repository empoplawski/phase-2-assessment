/************************************************************/
/*   It is required to use Array.prototype methods          */
/*   when iterating over a classroom's array of students.   */
/************************************************************/

var Classroom = function(students){
  this.students = students
}

Classroom.prototype.find = function(name){

  function findStudentName(student){
    console.log("im here")
    return student.firstName === name;
  }
  return this.students.find(findStudentName)
}


Classroom.prototype.honorRollStudents = function(){
  var honorStudents = this.students.filter(function(student){
      console.log("in function")
      return student.averageScore() >= 95
  })
  return honorStudents
}


