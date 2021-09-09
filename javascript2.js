/**
 * http://usejsdoc.org/
 */
var my_jquery_function;
//this is jQuery function
$(function(){
 my_jquery_function = function(arr)
 {
     var data={"arr":arr};
     // alert("data   "+ qid+"  "+ curAns)
      $.ajax({
      	type: "post",
          url: "TextExam",
          data: data,
          async: false,
          success:function(){
 				
        	  
 				window.location.href= "student_grades.jsp"
          }
          
 	    });
 }
});


var d;
var currAns;
var dataArr=[];
$(document).ready(function() {
	
	    var arr=[];
	    
    	
	        $.ajax({
	        	type: "Get",
             url: "TextExam",
             //data: data,
             async: false,
             success:function(data){
            	 d=data;
            	 arr=data
					console.log( d.toString());
					d=JSON.parse(data);
					Display(d[0].id, d[0].question,0)
				
	            }
            
		    });
        
});

let curr = 0;
function Display(qId,question, id) {
	curQues= question;
    let ques = document.getElementById('questiondis');
   let row = '';

	
    if (question.status == "")
        console.log('not selected')

    document.getElementById('questionText').innerText = (curr + 1) + '.' + question
   

       // document.getElementById('questiondis').innerHTML = row;
        document.getElementById('current').innerText = (curr + 1) + '/'+d.length

    


}
function Next() {
	currAns=document.getElementById("textarea").value
	dataArr.push(d[curr].id);
	dataArr.push(currAns);
	curr = curr + 1
    if (curr == d.length){
    	my_jquery_function(dataArr); 
    	//window.location.href= "student_takeTextExam.jsp"
    }
      //  DisplayResults();
      // alert('done');
    else
    	//alert("cuerent "+ curQues)
        Display(d[curr].id , d[curr].question, curr )

        
}
