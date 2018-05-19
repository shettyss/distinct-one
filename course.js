var cleanUp;

var addCourse = function(){
    console.log("added crs js func");
}

var basicInfo = function(){
        console.log("gather basic info course");
};

var updateCourse = function(){
        console.log("Updating course");
};

var categoryUpdate = function(){
    var totalCourses;
    var amountPaidCourseCourse = 20000;
    var lecturingClasses;

    if(amountPaidCourse !== '' && amountPaidCourse !== undefined && lecturingClasses){
        lecturingClasses = 8;
    }

    var validate = function(){
        if(lecturingClasses === 0 || amountPaidCourse === 0){
            return false;
        }else{
            retuen true;
        }
    var validation = validate();
    if(validation.status){
        console.log("status ok");
    }else {
        console.log("status fails");
    }

}
