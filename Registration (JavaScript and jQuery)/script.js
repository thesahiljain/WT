function onSubmit(){
	
	var name = document.getElementsByName("fullname")[0].value;
	var dob = document.getElementsByName("YYYY")[0].value+"-"+document.getElementsByName("MM")[0].value+"-"+document.getElementsByName("DD")[0].value;
	var gender = document.querySelector("input[name='gender']:checked").value;
	var email = document.getElementsByName("email")[0].value;
	var contact = document.getElementsByName("contact")[0].value;
	
	if(!(/^[a-z| ]+$/i.test(name))){
		alert("Wrong name");
		return false;
	}
	
	try{
		alert(typeof(Date.parse(dob)));
	}catch(exception){
		alert("Wrong date");
		return false;
	}
	
	if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})$/.test(email))){
		alert("Wrong email");
		return false;
	}
	
	if(isNaN(contact) || contact.length != 10 || contact.charAt(0) == '0'){
		alert("Wrong number");
		return false;
	}
	
	alert("Response submitted!");
	return true;

}

$(document).ready(function(){
	$("#formTitle").click(function(){
		$("#instructions").slideToggle();
	});
});