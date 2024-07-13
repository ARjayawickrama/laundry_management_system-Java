var check = document.getElementById("conditions");
var element = document.getElementById("submitsignup");
    function conditionsFunction(){
        if(check.checked == true){
        
                document.getElementById("submitsignup").disabled = false;
                element.style.backgroundColor = "black";
                
            }
        else {
            document.getElementById("submitsignup").disabled = true;
            element.style.backgroundColor = "#808080";
        }
    }

        

        


var username = document.getElementById("userName");
var password = document.getElementById("passwd");

username.onkeyup = function(){
    if(username.value.length >= 1 && password.value.length >= 8){
        document.getElementById("submitlogin").style.backgroundColor = "black";
        document.getElementById("submitlogin").disabled = false;
    }   
    else{
        document.getElementById("submitlogin").style.backgroundColor = "#808080";
        document.getElementById("submitlogin").disabled = true;
    }
}

password.onkeyup = function(){
    if(username.value.length >= 1 && password.value.length >= 8){
        document.getElementById("submitlogin").style.backgroundColor = "black";
        document.getElementById("submitlogin").disabled = false;
    }
    else{
        document.getElementById("submitlogin").style.backgroundColor = "#808080";
        document.getElementById("submitlogin").disabled = true;
    }
}