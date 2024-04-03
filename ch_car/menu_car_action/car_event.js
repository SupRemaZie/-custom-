window.addEventListener('message ', function (event) {
    var data = event.data;
    if (data.action == 'open') {
        $('#car_event').fadeIn(500);
    }
    else if (data.action == 'close') {
        $('#car_event').fadeOut(500);
    }
});

function car_event() {
    $.post('https://CFXDefaultFiveM_047523/car_event', JSON.stringify({}));
}