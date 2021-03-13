function checkPassword(theForm){
    if(theForm.pass.value != theForm.passcon.value){
        alert("Please make sure your passwords are the same.")
        return false;
    }
    else{
        return true;
    }
}