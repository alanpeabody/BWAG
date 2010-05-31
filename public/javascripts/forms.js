$(document).ready(function(){
  $("form#new_user").openid();
  
  $('.formtastic').valtastic({
    password_confirmation: {
      must_match: '#user_password',
      message: 'must match password'
    }
  });

  $("div.flash").fadeOut(5000);
  
});

