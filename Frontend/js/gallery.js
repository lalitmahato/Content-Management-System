let galleryImages = [
  {
    id: 1,
    img: "1.jpg",
  },
  {
    id: 2,
    img: "2.jfif",
  },
  {
    id: 3,
    img: "3.jpg",
  },
  {
    id: 4,
    img: "news1.jpg",
  },
  {
    id: 5,
    img: "news2.jpg",
  },
  {
    id: 6,
    img: "news3.jpg",
  },
  {
    id: 7,
    img: "news4.jpg",
  },
  {
    id: 8,
    img: "news1.jpg",
  },
  {
    id: 9,
    img: "1.jpg",
  },
  {
    id: 10,
    img: "2.jfif",
  },
  {
    id: 11,
    img: "3.jpg",
  },
  {
    id: 12,
    img: "news1.jpg",
  },
  {
    id: 13,
    img: "news2.jpg",
  },
  {
    id: 14,
    img: "news3.jpg",
  },
  {
    id: 15,
    img: "news4.jpg",
  },
  {
    id: 16,
    img: "news1.jpg",
  },
  {
    id: 17,
    img: "1.jpg",
  },
  {
    id: 18,
    img: "2.jfif",
  },
  {
    id: 19,
    img: "3.jpg",
  },
  {
    id: 20,
    img: "news1.jpg",
  },
  {
    id: 21,
    img: "news2.jpg",
  },
  {
    id: 22,
    img: "news3.jpg",
  },
  {
    id: 23,
    img: "news4.jpg",
  },
  {
    id: 24,
    img: "news1.jpg",
  },
];
let galleryContainer = document.getElementById("gallery-images");
let currentPage = document.getElementById("current-page");
let totalPages = document.getElementById("total-pages");
let pagination = document.getElementById("paginationNumbers");
let previousPage = document.getElementById("previousGalleryPage");
let nextPage = document.getElementById("nextGalleryPage");
let rows = 16;
let current_page = 1;
let paginate = [];
let total = Math.ceil(galleryImages.length / rows);

for (let index = 1; index <= total; index++) {
  paginate.push(index);
}

let galleryPagination = (images, galleryContainer, images_per_page, page) => {
  galleryContainer.innerHTML = "";
  page--;
  let start = images_per_page * page;
  end = start + images_per_page;
  let paginatedItems = images.slice(start, end);
  if (paginatedItems.length == 0) {
    galleryContainer.innerHTML = `<div class='col-md-12'>No Images at the moment</div>`;
  } else {
    galleryContainer.innerHTML = paginatedItems
      .map((item) => {
        return `
    <div class="col-md-3 gallery-image mb-4" key="${item.id}">
        <img class="w-100" src="./img/${item.img}" alt="">
    </div>
    `;
      })
      .join("");
  }
};

let paginationPages = () => {
  pagination.innerHTML = paginate
    .map((index) => {
      return `
            <li class="page-item">
                <a class="page-link ${
                  index === current_page ? "active-paginate" : ""
                }" href="#">${index}</a>
            </li>`;
    })
    .join("");
};

previousPage.addEventListener("click", () => {
  if (current_page - 1 > 0) {
    current_page--;
    paginationPages();
    galleryPagination(galleryImages, galleryContainer, rows, current_page);
    overlayImageOpening();
    currentPage.innerHTML = current_page;
  }
});

nextPage.addEventListener("click", () => {
  if (current_page + 1 <= total) {
    current_page++;
    paginationPages();
    galleryPagination(galleryImages, galleryContainer, rows, current_page);
    overlayImageOpening();
    currentPage.innerHTML = current_page;
  }
});

pagination.addEventListener("click", (e) => {
  current_page = Number(e.target.innerHTML);
  for (let index = 0; index < total; index++) {
    if (index + 1 === current_page) {
      for (let index = 0; index < pagination.childElementCount; index++) {
        pagination.children[index].children[0].classList.remove(
          "active-paginate"
        );
      }
      e.target.classList.add("active-paginate");
      currentPage.innerHTML = current_page;
      galleryPagination(galleryImages, galleryContainer, rows, current_page);
      overlayImageOpening();
    }
  }
});

galleryPagination(galleryImages, galleryContainer, rows, current_page);
paginationPages();
currentPage.innerHTML = current_page;
totalPages.innerHTML = total;
