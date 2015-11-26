// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//


//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require switchery
//= require jquery.purr
//= require jasny-bootstrap
//= require best_in_place
//= require garlic
//= require turbolinks

//= require twitter/bootstrap
//= require lazybox
//= require turbolinks
//= require bootstrap-select
//= require bootstrap-datepicker
//= require jquery.remotipart

//= require_tree .





$(document).ready(function() {
  
  // $('a#show_profesion_link').lazybox({closeImg: true});
  
  $('a[rel*=lazybox]').lazybox({close: false, modal: false, opacity: 0.7, klass: 'lazybox', speed: 200});
  $.lazybox.settings = {cancelClass: "button green", submitClass: 'button red', closeImg: false, niceClose: false}
  $.rails.allowAction = $.lazybox.confirm;
 
});

$('#teams').tooltip('show')





$(document).on("ready page:load", function() {
$('.js-filter').on("ajax:success", function (e,data,status,xhr){
alert("hola")
$('.personal').html(data)
});


function () {
$('.js-filter').click(function (){
alert("hola");
});

});



$(document).ready(function() {
    $('#selecctall').click(function(event) {  //on click 
        if(this.checked) { // check select status
            $('.checkbox1').each(function() { //loop through each checkbox
                this.checked = true;  //select all checkboxes with class "checkbox1"               
            });
        }else{
            $('.checkbox1').each(function() { //loop through each checkbox
                this.checked = false; //deselect all checkboxes with class "checkbox1"                       
            });         
        }
    });


    $('#selecctall2').click(function(event) {  //on click 
        if(this.checked) { // check select status
            $('.checkbox2').each(function() { //loop through each checkbox
                this.checked = true;  //select all checkboxes with class "checkbox1"               
            });
        }else{
            $('.checkbox2').each(function() { //loop through each checkbox
                this.checked = false; //deselect all checkboxes with class "checkbox1"                       
            });         
        }
    });

    
  




});



  $(function () {
        $(".allchk").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport").show();
                $("#dvPassport2").show();
                $("#dvPassport3").show();
                $("#dvPassport4").show();
                $("#dvPassport5").show();
                $("#dvPassport6").show();
                $("#dvPassport7").show();
                $("#dvPassport8").show();
                $("#dvPassport9").show();
                $("#dvPassport10").show();
                $("#dvPassport11").show();
                $("#dvPassport12").show();
            } else {
                $("#dvPassport").hide();
                $("#dvPassport2").hide();
                $("#dvPassport3").hide();
                $("#dvPassport4").hide();
                $("#dvPassport5").hide();
                $("#dvPassport6").hide();
                $("#dvPassport7").hide();
                $("#dvPassport8").hide();
                $("#dvPassport9").hide();
                $("#dvPassport10").hide();
                $("#dvPassport11").hide();
                $("#dvPassport12").hide();

            }
        });
    });


  $(function () {
        $(".allchk2").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport13").show();
                $("#dvPassport14").show();
                $("#dvPassport15").show();
                $("#dvPassport16").show();
                $("#dvPassport17").show();
                $("#dvPassport18").show();
                $("#dvPassport19").show();
                $("#dvPassport20").show();
                $("#dvPassport21").show();
                $("#dvPassport22").show();
            } else {
                $("#dvPassport13").hide();
                $("#dvPassport14").hide();
                $("#dvPassport15").hide();
                $("#dvPassport16").hide();
                $("#dvPassport17").hide();
                $("#dvPassport18").hide();
                $("#dvPassport19").hide();
                $("#dvPassport20").hide();
                $("#dvPassport21").hide();
                $("#dvPassport22").hide();

            }
        });
    });

  $(function () {
        $(".chkPassport").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport").show();
            } else {
                $("#dvPassport").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport2").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport2").show();
            } else {
                $("#dvPassport2").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport3").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport3").show();
            } else {
                $("#dvPassport3").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport4").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport4").show();
            } else {
                $("#dvPassport4").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport5").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport5").show();
            } else {
                $("#dvPassport5").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport6").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport6").show();
            } else {
                $("#dvPassport6").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport7").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport7").show();
            } else {
                $("#dvPassport7").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport8").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport8").show();
            } else {
                $("#dvPassport8").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport9").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport9").show();
            } else {
                $("#dvPassport9").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport10").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport10").show();
            } else {
                $("#dvPassport10").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport11").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport11").show();
            } else {
                $("#dvPassport11").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport12").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport12").show();
            } else {
                $("#dvPassport12").hide();
            }
        });
    });




    $(function () {
        $(".Embarazo").click(function () {
            if ($(this).is(":checked")) {
                $("#MostrarEmbarazo").show();
                $("#MostrarEmbarazo2").show();
                $("#MostrarEmbarazo3").show();
                $("#MostrarEmbarazo4").show();
                $("#MostrarEmbarazo5").show();
                $("#MostrarEmbarazo6").show();
                $("#MostrarEmbarazo7").show();
                $("#MostrarEmbarazo8").show();
            } else {
                $("#MostrarEmbarazo").hide();
                $("#MostrarEmbarazo2").hide();
                $("#MostrarEmbarazo3").hide();
                $("#MostrarEmbarazo4").hide();
                $("#MostrarEmbarazo5").hide();
                $("#MostrarEmbarazo6").hide();
                $("#MostrarEmbarazo7").hide();
                $("#MostrarEmbarazo8").hide();
            }
        });
    });












    $(function () {
        $(".chkPassport13").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport13").show();
            } else {
                $("#dvPassport13").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport14").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport14").show();
            } else {
                $("#dvPassport14").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport15").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport15").show();
            } else {
                $("#dvPassport15").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport16").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport16").show();
            } else {
                $("#dvPassport16").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport17").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport17").show();
            } else {
                $("#dvPassport17").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport18").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport18").show();
            } else {
                $("#dvPassport18").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport19").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport19").show();
            } else {
                $("#dvPassport19").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport20").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport20").show();
            } else {
                $("#dvPassport20").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport21").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport21").show();
            } else {
                $("#dvPassport21").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport22").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport22").show();
            } else {
                $("#dvPassport22").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport23").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport23").show();
            } else {
                $("#dvPassport23").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport24").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport24").show();
            } else {
                $("#dvPassport24").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport25").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport25").show();
            } else {
                $("#dvPassport25").hide();
            }
        });
    });


    $(function () {
        $(".chkPassport26").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport26").show();
            } else {
                $("#dvPassport26").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport27").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport27").show();
            } else {
                $("#dvPassport27").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport28").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport28").show();
            } else {
                $("#dvPassport28").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport29").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport29").show();
            } else {
                $("#dvPassport29").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport30").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport30").show();
            } else {
                $("#dvPassport30").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport31").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport31").show();
            } else {
                $("#dvPassport31").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport32").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport32").show();
            } else {
                $("#dvPassport32").hide();
            }
        });
    });
    $(function () {
        $(".chkPassport33").click(function () {
            if ($(this).is(":checked")) {
                $("#dvPassport33").show();
            } else {
                $("#dvPassport33").hide();
            }
        });
    });




















































