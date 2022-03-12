function Calculate(){
    var height = document.getElementById("h-input").value;
    var weight = document.getElementById("w-input").value;
    var result = parseFloat(weight) /(parseFloat(height)/100)**2;
    
    
    
    if(!isNaN(result)){
        document.getElementById("bmi-output").innerHTML = result;
        if(result < 18.5){
            document.getElementById("bmi-status").innerHTML = "저체중";
        }
        else if(result < 25){
            document.getElementById("bmi-status").innerHTML = "정상";
        }
        else if(result < 30){
            document.getElementById("bmi-status").innerHTML = "과체중";
        }
        else{
            document.getElementById("bmi-status").innerHTML = "비만";
        }
    }
}