var initValtastic = function(){
  $('.formtastic').valtastic({});
};


var initFlash = function(){
  $("div.flash").fadeOut(5000);
};

var initOpenID = function(){
  username = $("#user_openid_username_input").hide();
  openid = $("#user_openid_identifier_input").hide();
  
  $("#openid_providers img").live('click', function(){
    li = $(this).parent("li");
    uri = li.attr('data-uri');
    if (li.hasClass("direct")) {
      openid.show().find("input").val(uri);
      username.hide();
    } else if (li.hasClass("openid")) {
      openid.show().find("input").val("http://").focus();
      username.hide();
    } else {
      openid.hide().find("input").val(uri);
      username.show().find("input").focus();
      username.find("label").html(li.attr('title'));
    };
  });
  
  $("form#new_user").submit(function(){
    un = username.find("input").val()
    if (un != "") {
      old_val = openid.find("input").val();
      openid.find("input").val(old_val.replace('username',un));
    }
    return true;
  });
};

$(document).ready(function(){
  initValtastic();
  initFlash();
  initOpenID();
});

