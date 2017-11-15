/********************************************************/
/*   It is required to use a for loop                   */
/*   when iterating over a student's array of scores.   */
/********************************************************/

var Student = function(student){
  this.firstName = student.firstName;
  this.scores = student.scores || []
}

Student.prototype.averageScore = function(){
  var totalAverage = 0

  for (var i = 0; i < this.scores.length; i ++){

    totalAverage += this.scores[i]

  }

  var roughTotal =  totalAverage / this.scores.length
  var total = Math.floor(roughTotal);
  return total
};

Student.prototype.letterGrade = function(){
  if ( this.averageScore() >= 90){
    return "A"
  }
  else if (this.averageScore() >= 80){
    return "B"
  }
    else if (this.averageScore() >= 70){
    return "C"
  }
    else if (this.averageScore() >= 60){
    return "D"
  }
    else {
    return "F"
  }

}





