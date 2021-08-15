// getting all the id for galleyImages container, current page, total pages, pagination numbers, next and previous button
let galleryContainer = document.getElementById("gallery-images");
let currentPage = document.getElementById("current-page");
let totalPages = document.getElementById("total-pages");
let pagination = document.getElementById("paginationNumbers");
let previousPage = document.getElementById("previousGalleryPage");
let nextPage = document.getElementById("nextGalleryPage");
// array to store key value pairs of galley data
let galleryImages = [];
// getting all the data which is initially brough from database to store in galleryImages array using for loop.
for (var index = 0; index < galleryContainer.childElementCount; index++) {
  // Getting data from gallery-images id using children
  let imageId = galleryContainer.children[index].getAttribute("key");
  let imageSrc =
    galleryContainer.children[index].children[0].getAttribute("src");
  let imageAlt =
    galleryContainer.children[index].children[0].getAttribute("alt");
    // puuting data into the object using push method
  galleryImages.push({ id: imageId, title: imageAlt, img: imageSrc });
}
// rows shows the total number of images that can be in a page
let rows = 8;
// current_page shows the current galley page user is which is initially set to 1
let current_page = 1;
// paginate stores the paginated numbers from total
let paginate = [];
// total is calculating the total number of pages accoridng to the number of images
let total = Math.ceil(galleryImages.length / rows);
// putting the paginate number into paginate array.
for (let index = 1; index <= total; index++) {
  paginate.push(index);
}
// galleryPagination paginates the data according to the page and shows the images consisting of upto 8 images according to the page.
let galleryPagination = (images, galleryContainer, images_per_page, page) => {
  galleryContainer.innerHTML = "";
  page--;
  let start = images_per_page * page;
  end = start + images_per_page;
  let paginatedItems = images.slice(start, end);
  // if no images is added it shows no images found
  if (paginatedItems.length == 0) {
    galleryContainer.innerHTML = `<div class='col-md-12'>No Images at the moment</div>`;
  } else { // if found it shows the images it puts the images in the page which can be upto 8 images
    galleryContainer.innerHTML = paginatedItems
      .map((item) => {
        return `
    <div class="col-md-3 gallery-image mb-4" key="${item.id}">
        <img class="w-100" src="${item.img}" alt="${item.title}">
    </div>
    `;
      })
      .join(""); // as the data are seperated by comma so in order to removed that I removed the comma
  }
};
// all the pages numbers are taken from paginate array and stored using innerHTML to dom and if it is the current page with active-paginate the color changes for that.
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
    .join(""); // as the data are seperated by comma so in order to removed that I removed the comma
};
// this click function goes to the previous page of gallery 
previousPage.addEventListener("click", () => {
  if (current_page - 1 > 0) {
    current_page--;
    paginationPages();
    galleryPagination(galleryImages, galleryContainer, rows, current_page);
    overlayImageOpening();
    currentPage.innerHTML = current_page;
  }
});
// this click function goes to the next page of gallery 
nextPage.addEventListener("click", () => {
  if (current_page + 1 <= total) {
    current_page++;
    paginationPages();
    galleryPagination(galleryImages, galleryContainer, rows, current_page);
    overlayImageOpening();
    currentPage.innerHTML = current_page;
  }
});
// this click function goes to the pagianted numbers page of gallery 
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
// Calling the pagination fucntion
galleryPagination(galleryImages, galleryContainer, rows, current_page);
paginationPages();
currentPage.innerHTML = current_page; //current page number to dom
totalPages.innerHTML = total; //total page number to dom
