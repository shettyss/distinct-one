var categoryArrayList;
var categorySortList;

var addCategory = function(){
    console.log("added category js func");
}

var upgradeCategory = function(){
    console.log("upgrade category js func");
}

var deleteCategory = function(){
    console.log("delete category js func");
}

var extendCategory = function(){
    categoryArrayList.push("French course" , "Server Extennd");
    return categoryArrayList;
}
var addCategory = extendCategory();
