$(document)
		.ready(
				function() {
					
					
					


					/*pauseButton.addEventListener("click", function() {
					  vid.classList.toggle("stopfade");
					  if (vid.paused) {
					    vid.play();
					    //pauseButton.innerHTML = "Pause";
					  } else {
					    vid.pause();
					    //pauseButton.innerHTML = "Paused";
					  }
					})*/
					
					$('[data-toggle="tooltip"]').tooltip(); 
					
					//$("#myFormCreate").css("display", "block");
					 var x = document.getElementById("myFormCreate");
					 var y = document.getElementById("myFormlogin");
					 x.style.display = "none";
			          y.style.display = "block";
					 $("#submitLoginbtn").click(function(){
						 // var x = document.getElementById("myFormlogin");
					     
					          x.style.display = "none";
					          y.style.display = "block";
					      });
					 $("#submitcreatebtn").click(function(){
						//  var x = document.getElementById("submitLoginbtn");
					      
					          x.style.display = "block";
					          y.style.display = "none";
					     });
					
				/*	$("#submitLoginbtn").click(function(){
					  var x = document.getElementById("myFormCreate");
				      if (x.style.display === "none") {
				          x.style.display = "block";
				      } else {
				          x.style.display = "none";
				      }});
				      
					$("#myFormCreate").click(function(){
						  var x = document.getElementById("submitLoginbtn");
					      if (x.style.display === "none") {
					          x.style.display = "block";
					      } else {
					          x.style.display = "none";
					      }});*/
					
					var spanMsg = "";
					$("#submitcreate")
							.click(
									function() {
										var username = document
												.getElementById("username").value;

										var password = document
												.getElementById("password").value;
										// var
										// confirm=document.getElementById("confirmPassword").value;
										var confirmPassword = document.forms["myFormCreate"]["confirmPassword"].value;
										var email = document
												.getElementById("email").value;
										if (username == null || username == "") {
											document.getElementById('username').style.borderColor = "red";
											alert("username can't be empty");
										} else if (password == null
												|| password == "") {
											document.getElementById('password').style.borderColor = "red";
											alert("password cannot be empty");
										} else if (confirmPassword == null
												|| confirmPassword == "") {
											document
													.getElementById('confirmPassword').style.borderColor = "red";
											alert("confirmPassword cannot be empty");
										} else if (email == null || email == "") {
											document.getElementById('email').style.borderColor = "red";
											alert("email cannot be empty");
										} else if (!(password == confirmPassword)) {

											document.forms["myFormCreate"]["confirmPassword"].style.borderColor = "yellow";
											document
													.getElementById("confirmpass").innerHTML = "Password missmatch";
										} else {

											getData(username, password, email);

										}
									});
					
					
					
					
					
				/*	$('#myFormlogin').validate({

					    submitHandler: function(form) {
					        $.ajax({
					            url: form.action,
					            type: form.method,
					            data: $(form).serialize(),
					            success: function(response) {
					                $('#answers').html(response);
					            }            
					        });
					    }
					});*/

					// setInterval(function(){},5000);
					
					$('#password').keyup(function(e) {
					     var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
					     var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
					     var enoughRegex = new RegExp("(?=.{6,}).*", "g");
					     if (false == enoughRegex.test($(this).val())) {
					             $('#passstrength').html('More Characters');
					     } else if (strongRegex.test($(this).val())) {
					             $('#passstrength').className = 'ok';
					             $('#passstrength').html('Strong!');
					     } else if (mediumRegex.test($(this).val())) {
					             $('#passstrength').className = 'alert';
					             $('#passstrength').html('Medium!');
					     } else {
					             $('#passstrength').className = 'error';
					             $('#passstrength').html('Weak!');
					     }
					     return true;
					});
				});

function getData(username, password, email) {
	
	$.ajax({
		url : "log?uname=" + username + "&password=" + password + "&email="
				+ email,
		type : "GET",
		async : false,
		success : function(data) {
			console.log(data);
			spanMsg = data;
			document.getElementById("displayMessage").innerHTML = spanMsg;
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("ERROR");
			console.log(textStatus);
		}
	});
};


function checkForm(form){
	debugger;
	
	var valUsername=form.usernameLogIn.value;
	var valPassword=form.passwordLogin.value;
	var response;
	
	$.ajax({
		url : "signinValidation?uname=" + valUsername + "&password=" + valPassword ,
		type : "GET",
		async : false,
		success : function(data) {
			console.log(data);
			if(data=="success"){
				response=true;
			}
			else{
				response=false
			document.getElementById("loginFailureSpan").innerHTML = "Coudn't find your EIA Account";
			}
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("ERROR");
			console.log(textStatus);
		}
	});
	return response;
	
}