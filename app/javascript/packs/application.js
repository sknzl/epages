import "bootstrap";

$( document ).ready(function() {

  // hide spinner
  console.log("hide spinner")
  $(".spinner").hide();


  // // show spinner on AJAX start
  // $(document).ajaxStart(function(){
  //   console.log("show spinner")
  //   $(".spinner").show();
  // });

  // // hide spinner on AJAX stop
  // $(document).ajaxStop(function(){
  //   console.log("hide spinner")
  //   $(".spinner").hide();
  // });

});

