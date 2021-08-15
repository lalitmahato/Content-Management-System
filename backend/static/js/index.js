var myCarousel = document.querySelector("#carouselExampleIndicators");
var carousel = new bootstrap.Carousel(myCarousel, {interval: 3000,pause: false});

var eventDate = document.getElementsByClassName('event-date');


for (let index = 0; index < eventDate.length; index++) {
    let dateSplit = eventDate[index].innerHTML.split(',')
    let date = dateSplit[0] + dateSplit[1];
    eventDate[index].innerHTML = date;
}