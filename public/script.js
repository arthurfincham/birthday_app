document.documentElement.style.setProperty('--animate-duration', '.5s');

$("form").on('submit.blocker', function (e) {
    setTimeout(function () {
        $("form").off('submit.blocker').trigger('submit');
    }, 400);
    e.preventDefault();
    $("body").addClass( "animate__animated animate__fadeOut" );
});

$(".results").addClass( "animate__animated animate__fadeIn" );