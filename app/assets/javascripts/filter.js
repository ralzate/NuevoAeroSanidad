

$(document).on("ready page:load", function() {
$('.js-filter').on("ajax:success", function (e,data,status,xhr){

$('.personal').html(data)
});


$('.query').on("keyup", function (e){
$('.js-filter').submit();

});
});