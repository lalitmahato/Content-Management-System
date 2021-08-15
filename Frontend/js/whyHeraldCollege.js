const whyHerald = [
  {
    id: 1,
    image: '/img/HeroImages/heroImg1.png',
    title: 'Academic Prestige',
    description: `Lorem ipsum dolor sit amet consectetur adipiscing elitsed do
    eiusmod tempor incididunt utlabore et dolore magna aliqua.
    Utenim ad minim veniam quis nostrud exercitation.`,
  },
  {
    id: 2,
    image: '/img/1.jpg',
    title: 'Recognition',
    description: `Lorem ipsum dolor sit amet consectetur adipiscing elitsed do
    eiusmod tempor incididunt utlabore et dolore magna aliqua.
    Utenim ad minim veniam quis nostrud exercitation.`,
  },
  {
    id: 3,
    image: '/img/2.jfif',
    title: 'Experinced Faculty',
    description: `Lorem ipsum dolor sit amet consectetur adipiscing elitsed do
    eiusmod tempor incididunt utlabore et dolore magna aliqua.
    Utenim ad minim veniam quis nostrud exercitation.`,
  },
  {
    id: 4,
    image: '/img/3.jpg',
    title: 'Certification',
    description: `Lorem ipsum dolor sit amet consectetur adipiscing elitsed do
    eiusmod tempor incididunt utlabore et dolore magna aliqua.
    Utenim ad minim veniam quis nostrud exercitation.`,
  },
];

let why = whyHerald.map((reason) => {
  return `
  <hr class="why-herald-horizontal-line">
    <div class="card why" key=${reason.id}>
        <div class="card-header">
            <h2 class="mb-0">
                <button class="btn btn-link" type="button">${reason.title}</button>
            </h2>
        </div>
        <div class="card-body why-description">${reason.description}</div>
    </div>
    `;
});
document.getElementById('whyHerald').innerHTML = why.join('');
document.getElementById('whyHeraldImage').innerHTML = whyHerald
  .map((reason) => {
    return `<img class='why-image w-100' src="${reason.image}" alt="">`;
  })
  .join('');

document.addEventListener('DOMContentLoaded', () => {
  var cards = document.getElementsByClassName('why');
  var images = document.getElementsByClassName('why-image');
  cards[0].classList.add('active');
  images[0].classList.add('active');
  var activeAccordion = function () {
    var key = parseInt(this.getAttribute('key'));
    this.classList.add('active');
    for (let index = 0; index < whyHerald.length; index++) {
      if (whyHerald[index].id !== key) {
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
