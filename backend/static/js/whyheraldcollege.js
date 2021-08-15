let whyHeraldContainer = document.getElementById("whyHerald");
let whyImageContainer = document.getElementById("whyHeraldImage");
const whyHerald = [];
for (var index = 1; index < whyHeraldContainer.childElementCount; index+=2) {
  let whyId = whyHeraldContainer.children[index].getAttribute("key");
  let imageSrc;
  let counter = 0;
    imageSrc = whyImageContainer.children[counter].src;
  let whyTitle =
    whyHeraldContainer.children[index].getElementsByTagName("button")[0].innerHTML;
  let whyDescription =
  whyHeraldContainer.children[index].children[1].innerHTML;
  whyHerald.push({ id: whyId,img: imageSrc, title: whyTitle,description:whyDescription  });
  counter++;
}

document.addEventListener('DOMContentLoaded', () => {
  var cards = document.getElementsByClassName('why');
  var images = document.getElementsByClassName('why-image');
  cards[0].classList.add('active');
  images[0].classList.add('active');
  var activeAccordion = function () {
    var key = parseInt(this.getAttribute('key'));
    console.log(this);
    this.classList.add('active');
    for (let index = 0; index < whyHerald.length; index++) {
      if (Number(whyHerald[index].id) !== key) {
        cards[index].classList.remove('active');
        images[index].classList.remove('active');
      } else {
        images[index].classList.add('active');
      }
    }
  };
  Array.from(cards).forEach(function (card) {
    card.addEventListener('click', activeAccordion);
  });
});
