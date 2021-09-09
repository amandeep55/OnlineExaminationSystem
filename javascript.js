/**
 * http://usejsdoc.org/
 */
var my_jquery_function;
//this is jQuery function
$(function(){
 my_jquery_function = function()
 {
     alert("function jquery "+ TotalScore);
     var data={"totalScore":TotalScore};
     // alert("data   "+ qid+"  "+ curAns)
      $.ajax({
      	type: "post",
          url: "Exam",
          data: data,
          async: false,
          success:function(){
 				window.location.href= "student_takeTextExam.jsp"
          }
          
 	    });
 }
});


var d;
var currAns;
$(document).ready(function() {
	
	    var arr=[];
	    
    	
	        $.ajax({
	        	type: "Get",
             url: "Exam",
             //data: data,
             async: false,
             success:function(data){
            	 d=data;
            	 arr=data
					console.log( d.toString());
					d=JSON.parse(data);
					Display(d[0].question, 0,d[0].answer1,d[0].answer2,d[0].answer3,d[0].answer4)
				
	            }
            
		    });
        
});
let curr = 0;
let optionsSelected=[] ;
let TotalScore=0;
function Display(question, id,ans1,ans2,ans3,ans4) {
	curQues= question
    let ques = document.getElementById('questiondis')
   let row = ``
   var temp=[];
	temp[0]=ans1;
	temp[1]=ans2;
	temp[2]=ans3;
	temp[3]=ans4;
	
    if (question.status == "")
        console.log('not selected')

    document.getElementById('questionText').innerText = (curr + 1) + '.' + question
    for (let key = 0; key < 4; key++) {
        {
        	var answer='answer'+key
        	//alert("ans  " + temp[key])
        	//alert("loooop" + d[0].answer)

            row += `<div class="list-group-item mt-3 bg-light ">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="option1"  onclick="StoreOption(${key})">
                                    <label class="form-check-label"  id="q_${key}" for="q_${key}">
                                        ${temp[key]}
                                    </label>
                                </div>
                            </div>`
            console.log(key)
        }

        document.getElementById('questiondis').innerHTML = row;
        document.getElementById('current').innerText = (curr + 1) + '/'+d.length

    }


}

function Previous() {
	
    curr = (curr - 1) % d.length
    if(curr==-1){
        curr=0
    	Display(d[curr].question, curr,d[curr].answer1,d[curr].answer2,d[curr].answer3,d[curr].answer4)
    }
    if (curr < 0) curr = -curr
    
    Display(d[curr].question, curr,d[curr].answer1,d[curr].answer2,d[curr].answer3,d[curr].answer4)

}

function Next() {


	
	


    curr = curr + 1
    if (curr == d.length){
    	my_jquery_function(); 
    	//window.location.href= "student_takeTextExam.jsp"
    }
      //  DisplayResults();
      // alert('done');
    else
    	//alert("cuerent "+ curQues)
        Display(d[curr].question, curr,d[curr].answer1,d[curr].answer2,d[curr].answer3,d[curr].answer4 )

        
}

function StoreOption(key) {
	//alert("key "+key)
    //optionsSelected[curr] = document.querySelector('#q_' + key).innerText;
	 currAns = document.querySelector('#q_' + key).innerText;
   // obj.questions[curr].status = optionsSelected[curr]
    //curAns=optionsSelected[curr]
    //alert("selected "+  currAns)
    if (currAns == d[curr].correctAnswer) {
        TotalScore = TotalScore+1;
        
        
         // alert('true' + obj.questions[curr].answer)
    }
    if(curr==d.length-1){
    	alert("score is "+ TotalScore);
    }
    
    
    // alert(document.querySelector('#q_' + key).innerText)
}