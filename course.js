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

var analysisCourse = function(){
        console.log("analysis course");
        var localanalysis;
        localanalysis = "added local analysis";
};

var analysisCourseonrequest = function(){
        var request_analysis;
        localanalysis = "requested for analysid data";
};

var courseBasicInfo = function(){
        var courseName = [];
        var courseId , subcourseId;
        courseName.push("C++" , "Data structure");
};

var professorlist = function(){
        var courseRelatedData = courseBasicInfo();
        var professorName = [];
        var courseId , subcourseId;
        professorName.push("David A" , "Britney P");
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
