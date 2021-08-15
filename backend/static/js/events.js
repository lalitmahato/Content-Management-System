const eventsData = [];

const eventContainer = document.getElementById("eventContainer");
let eventPagination = document.getElementById("eventPaginationNumbers");
let previousPage = document.getElementById("previousEventPage");
let nextPage = document.getElementById("nextEventPage");
let totalBlogPosts = document.getElementById("totalBlogsPosts");
let currentPage = document.getElementById("currentPage");
let currentPageBlogsPosts = document.getElementById("currentBlogsPageEvents");
for (var index = 0; index < eventContainer.childElementCount; index++) {
  let eventId = eventContainer.children[index].getAttribute("key");
  let imageSrc = eventContainer.children[index].children[0]
    .getElementsByTagName("img")[0]
    .getAttribute("src");
  let eventTitle =
    eventContainer.children[index].children[0].getElementsByTagName("h5")[0]
      .innerHTML;
  let eventDate =
    eventContainer.children[0].children[0].getElementsByTagName("span")[1]
      .innerHTML;
  let eventLocation =
    eventContainer.children[0].children[0].getElementsByClassName(
      "event-type"
    )[0].innerHTML;
  let eventPath = eventContainer.children[0]
    .getAttribute("onclick")
    .split("`")[1];
  eventsData.push({
    id: eventId,
    path: eventPath,
    title: eventTitle,
    date: eventDate,
    photo: imageSrc,
    location: eventLocation,
  });
}
console.log(eventsData);
let rows = 3;
let current_page = 1;
let paginate = [];
let total = Math.ceil(eventsData.length / rows);
console.log();
for (let index = 1; index <= total; index++) {
  paginate.push(index);
}

let eventsPagination = (images, eventContainer, images_per_page, page) => {
  eventContainer.innerHTML = "";
  page--;
  let start = images_per_page * page;
  end = start + images_per_page;
  let paginatedItems = images.slice(start, end);
  if (paginatedItems.length == 0) {
    eventContainer.innerHTML = `<div class='col-md-12'>No Events at the moment</div>`;
  } else {
    eventContainer.innerHTML = paginatedItems
      .map((event) => {
        return `
            <div class="col-md-4 mb-4" onclick="window.location.href='${event.path}'">
              <div class="card">
                <img src="${event.photo}" class="card-img-top event-image" alt="${event.eventName}" />
                <div class="card-body">
                    <div
                    type="button"
                    class="event-type btn btn-outline-success mb-3"
                    >
                    ${event.location}
                    </div>
                    <h5 class="card-title">
                    ${event.title}
                    </h5>
                </div>
                <div class="card-footer bg-transparent border-top-0">
                    By
                    <span class="by-whom text-success fw-bold pe-1 ps-1"
                    >Herald College</span
                    >
                    on
                    <span class="uploaded-date">${event.date}</span>
                </div>
             </div>
        </div>
    `;
      })
      .join("");
  }
};

let paginationPages = () => {
  eventPagination.innerHTML = paginate
    .map((index) => {
      return `
            <li class="page-item">
                <a class="event-paginate page-link ${
                  index === current_page ? "active-event-paginate" : ""
                }" href="#">${index}</a>
            </li>`;
    })
    .join("");
};

previousPage.addEventListener("click", () => {
  if (current_page - 1 > 0) {
    current_page--;
    paginationPages();
    eventsPagination(eventsData, eventContainer, rows, current_page);
    currentPageBlogsPosts.innerHTML = rows;
    currentPage.innerHTML = current_page;
  }
});

nextPage.addEventListener("click", () => {
  if (current_page + 1 <= total) {
    current_page++;
    paginationPages();
    eventsPagination(eventsData, eventContainer, rows, current_page);
    currentPageBlogsPosts.innerHTML = rows;
    currentPage.innerHTML = current_page;
  }
});

eventPagination.addEventListener("click", (e) => {
  for (let index = 0; index < total; index++) {
    if (index + 1 === Number(e.target.innerHTML)) {
      current_page = Number(e.target.innerHTML);
      for (let index = 0; index < eventPagination.childElementCount; index++) {
        eventPagination.children[index].children[0].classList.remove(
          "active-event-paginate"
        );
      }
      e.target.classList.add("active-event-paginate");
      eventsPagination(eventsData, eventContainer, rows, current_page);
      currentPageBlogsPosts.innerHTML = rows;
      currentPage.innerHTML = current_page;
    }
  }
});

eventsPagination(eventsData, eventContainer, rows, current_page);
paginationPages();
totalBlogPosts.innerHTML = eventsData.length;
currentPageBlogsPosts.innerHTML = rows;
currentPage.innerHTML = current_page;
