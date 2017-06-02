/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var dir = "";
var globalData = {}
var userDetailsArr = [];
function getDirectory(path){
    $("#runImageAnalytics").removeClass("disabled");
    var theFiles = path.target.files;
     
    var relativePath = theFiles[0].webkitRelativePath;
    var folder = relativePath;
    var directory = document.getElementById("file-7");
  
//      dir = directory.value;
      dir = folder.toString().split("/")[0];
          
}
function runEngine(){ 
    globalData = {};
   $('#floatBarsG').removeClass("modal "); 
   $('#floatBarsG').css("display","block"); 
    $("#downloadResult").removeClass("disabled");
//    $(".progress").css("display","block");
   $.ajax({
			url: '/AIEngine',
			data: {directory:dir},
			type: 'POST',
			success: function(response){
//			    alert(response)
                            var data = JSON.parse(response);
                            globalData = data;
                            dataDisplay(data);
			},
			error: function(error){
				console.log(error);
			}
		}); 
}

function dataDisplay(data){
    var keys = Object.keys(JSON.parse(data["user"])[0]);
    
    data = JSON.parse(data["user"])
    
    var htmlvar = "";
    htmlvar +="<table class=' highlight responsive-table'>";
    htmlvar +="<tr style='background-color: #01579b;color: #FFF;'>";
    for(var i in keys){
    htmlvar +="<th style='border:1px solid #d4d4d4'>"+keys[i]+"</th>";
    }
    htmlvar +="</tr>";
    
    for(var j in data){
        if(j!=0){
    htmlvar +="<tr>";
    for(var k in keys){
     htmlvar +="<td style='border:1px solid #d4d4d4'>"+data[j][keys[k]]+"</td>";
    }
    htmlvar +="</tr>";
    }
    }
    htmlvar +="</table>";
    setTimeout(function(){
    $('#floatBarsG').css("display","none");
    $("#reportViewDiv").html(htmlvar)
    }, 5000);
}

function downloadCSV(){
   
    JSONToCSVConvertor1(globalData["user"],"Output",true);
}

function JSONToCSVConvertor1(JSONData, ReportTitle, ShowLabel) {
    //If JSONData is not an object then JSON.parse will parse the JSON string in an Object
    var arrData = typeof JSONData != 'object' ? JSON.parse(JSONData) : JSONData;
    
    var CSV = '';    
    //Set Report title in first row or line
    
//    CSV += ReportTitle + '\r\n\n';

    //This condition will generate the Label/Header
    if (ShowLabel) {
        var row = "";
        
        //This loop will extract the label from 1st index of on array
        for (var index in arrData[0]) {
            
            //Now convert each value to string and comma-seprated
            row += index + ',';
        }

        row = row.slice(0, -1);
        
        //append Label row with line break
        CSV += row + '\r\n';
    }
    
    //1st loop is to extract each row
    for (var i = 0; i < arrData.length; i++) {
        var row = "";
        
        //2nd loop will extract each column and convert it in string comma-seprated
        for (var index in arrData[i]) {
            row += '"' + arrData[i][index] + '",';
        }

        row.slice(0, row.length - 1);
        
        //add a line break after each row
        CSV += row + '\r\n';
    }

    if (CSV == '') {        
        alert("Invalid data");
        return;
    }   
    
    //Generate a file name
    var fileName = "";
    //this will remove the blank-spaces from the title and replace it with an underscore
    fileName += ReportTitle.replace(/ /g,"_");   
    
    //Initialize file format you want csv or xls
   
    var uri = 'data:text/csv;charset=utf-8,' + escape(CSV);
    
    // Now the little tricky part.
    // you can use either>> window.open(uri);
    // but this will not work in some browsers
    // or you will not get the correct file extension    
    
    //this trick will generate a temp <a /> tag
    var link = document.createElement("a");    
    link.href = uri;
    
    //set the visibility hidden so it will not effect on your web-layout
    link.style = "visibility:hidden";
    link.download = fileName + ".csv";
    
    //this part will append the anchor tag and remove it after automatic click
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
}

function redirecttoLanding(){
    
//    if(userDetailsArr.length>0){
//     var theURL = window.location.pathname;
//     window.location.href = '/landing';

var  typeHint= "";
typeHint =$("#typeTest").val()
alert(typeHint)
$.ajax({
                type: "GET",
                data: {directory :"hello"},
                url: "http://192.168.23.180:5000/trialHit",
                success: function (response) {
                    alert(response)
//                    userListHtml(response)
                },
                error: function (e) {
                    alert('Error: ' + JSON.stringify(e));
                }
            });


//    }else{
//     alert("please sign in ")
//    }
}
function shelfAnalysis(){
     var theURL = window.location.pathname;
     window.location.href = '/shelfAnalysis';
}
function storeFrontAnalysis(){
     var theURL = window.location.pathname;
     window.location.href = '/storeFrontAnalysis';
}

function userDetailsInfo(){
    var userName = $("#user_name").val();
    var password = $("#password").val();
//    alert(userName+""+password);
    $.getJSON("static/json/userInfo.json",function(data){
        var userDetailsMap = {};
       for(var i in data){
           if(data[i]["Username"]==userName && data[i]["password"]==password){
               userDetailsMap["Username"] = userName;
               userDetailsMap["password"] = password;
               userDetailsArr.push(userDetailsMap)
               
              break;
           }else{
               
           }
       }
    });
}

function readShelfAnalysis(){
     $('#floatBarsG').removeClass("modal "); 
   $('#floatBarsG').css("display","block"); 
    $("#downloadResult").removeClass("disabled");
  $.get("static/extractedCSV/ShelfAnalysis.csv",function(data){
     
   JSONData =   csvJSON(data)
     TableGenerator(JSONData)
  });  
};

function downloadShelfAnalysis(){
   $.get("static/extractedCSV/ShelfAnalysis.csv",function(data){
    JSONToCSVConvertor(data, "Output", true); 
   
  }); 
}
function readStoreFrontAnalysis(){
     $('#floatBarsG').removeClass("modal "); 
   $('#floatBarsG').css("display","block"); 
    $("#downloadResult").removeClass("disabled");
  $.get("static/extractedCSV/StoreFrontAnalysis.csv",function(data){
     
   JSONData =   csvJSON(data)
     TableGenerator(JSONData)
  });  
};

function downloadStoreFrontAnalysis(){
   $.get("static/extractedCSV/StoreFrontAnalysis.csv",function(data){
    JSONToCSVConvertor(data, "Output", true); 
   
  }); 
}

function TableGenerator(data){
  var JSONData = "";
  var keys = Object.keys(data[0]);
  alert(JSON.stringify(keys))
  JSONData +="<table class=' highlight responsive-table'>"
  JSONData +="<tr style='background-color: #01579b;color: #FFF;'>"
  for(var k in keys){
  JSONData +="<th style='border:1px solid #d4d4d4'>"+keys[k]+"</th>"
  }
  JSONData +="</tr>"
  for(var i in data){
  JSONData +="<tr>"
  for(var j in keys){
  JSONData +="<td style='border:1px solid #d4d4d4'>"+data[i][keys[k]]+"</td>"
  }
  JSONData +="</tr>"
  }
  JSONData +="</table>"
  
  setTimeout(function(){
    $('#floatBarsG').css("display","none");
    $("#reportViewDiv").html(JSONData)
    }, 5000);
}



function csvJSON(csv){

  var lines=csv.split("\n");

  var result = [];

  var headers=lines[0].split(",");

  for(var i=1;i<lines.length;i++){

	  var obj = {};
	  var currentline=lines[i].split(",");

	  for(var j=0;j<headers.length;j++){
		  obj[headers[j]] = currentline[j];
	  }

	  result.push(obj);

  }
  
  //return result; //JavaScript object
  return result; //JSON
}




function JSONToCSVConvertor(CSV, ReportTitle, ShowLabel) {
  //Generate a file name
    var fileName = "";
    //this will remove the blank-spaces from the title and replace it with an underscore
    fileName += ReportTitle.replace(/ /g,"_");   
    
    //Initialize file format you want csv or xls
    
    var uri = 'data:text/csv;charset=utf-8,' + escape(CSV);
    
    // Now the little tricky part.
    // you can use either>> window.open(uri);
    // but this will not work in some browsers
    // or you will not get the correct file extension    
    
    //this trick will generate a temp <a /> tag
    var link = document.createElement("a");    
    link.href = uri;
    
    //set the visibility hidden so it will not effect on your web-layout
    link.style = "visibility:hidden";
    link.download = fileName + "_Royal_Sundaram.csv";
    
    //this part will append the anchor tag and remove it after automatic click
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);  
}