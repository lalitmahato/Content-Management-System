const blogContainer = document.getElementById("content");
let blogPagination = document.getElementById("blogPaginationNumbers");

const blogData = [];

for (var index = 0; index < blogContainer.childElementCount; index++) {
  let blogId = blogContainer.children[index].getAttribute("key");
  let imageSrc =
    blogContainer.children[index].children[0].getElementsByTagName("img")[0]
      .src;
  let blogTitle =
    blogContainer.children[index].children[0].getElementsByTagName("h3")[0]
      .innerHTML;
  let blogDescription =
    blogContainer.children[index].children[0].getElementsByTagName("p")[0]
      .innerHTML;
  let blogPath = blogContainer.children[index]
    .getAttribute("onclick")
    .split("`")[1];
  let blogDate =
    blogContainer.children[index].children[0].getElementsByTagName("span")[0]
      .innerHTML;
  let blogCategory =
    blogContainer.children[index].children[0].getElementsByTagName("span")[1]
      .innerHTML;
  blogData.push({
    id: blogId,
    img: imageSrc,
    title: blogTitle,
    description: blogDescription,
    path: blogPath,
    date: blogDate,
    category: blogCategory,
  });
}

let rows = 3;
let current_page = 1;
let paginate = [];
let total = Math.ceil(blogData.length / rows);
console.log();
for (let index = 1; index <= total; index++) {
  paginate.push(index);
}

let blogsPagination = (images, blogContainer, images_per_page, page) => {
  blogContainer.innerHTML = "";
  page--;
  let start = images_per_page * page;
  end = start + images_per_page;
  let paginatedItems = images.slice(start, end);
  if (paginatedItems.length == 0) {
    blogContainer.innerHTML = `<div class='col-md-12'>No Blogs at the moment</div>`;
  } else {
    blogContainer.innerHTML = paginatedItems
      .map((blog) => {
        return `
          <div class = "blog">
          <div class="blog-flex mt-5" onclick="location.href = '${blog.path}'">
            <div class="blog-image">
              <img src="${blog.img}" />
            </div>
            <div class="blog-description ps-4">
              <h3 class=" pt-3">${blog.title}</h3>
              <div class="blog-span d-flex justify-content-start gap-4">
              <div class="blog-releaseDate">
              <i class="far fa-calendar"></i>
                <span>${blog.date}</span>
              </div>
              <div class="blog-categories">
                <i class="fas fa-bookmark"></i>
                <span>${blog.category}</span>
              </div>
            </div>
              <p class="pe-2 pt-3">${blog.description.substring(0, 180)}...</p>
            </div>
          </div>
        </div>
      `;
      })
      .join("");
  }
};

let paginationPages = () => {
  blogPagination.innerHTML = paginate
    .map((index) => {
      return `
              <li class="page-item">
                  <a class="blog-paginate page-link ${
                    index === current_page ? "active-blog-paginate" : ""
                  }" href="#">${index}</a>
              </li>`;
    })
    .join("");
};
blogPagination.addEventListener("click", (e) => {
  for (let index = 0; index < total; index++) {
    if (index + 1 === Number(e.target.innerHTML)) {
      current_page = Number(e.target.innerHTML);
      for (let index = 0; index < blogPagination.childElementCount; index++) {
        blogPagination.children[index].children[0].classList.remove(
          "active-blog-paginate"
        );
      }
      e.target.classList.add("active-blog-paginate");
      blogsPagination(blogData, blogContainer, rows, current_page);
    }
  }
});

blogsPagination(blogData, blogContainer, rows, current_page);
paginationPages();
