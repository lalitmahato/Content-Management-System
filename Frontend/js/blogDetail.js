const blogDetailData = [
  {
    photo: "1.jpg",
    path: "blogDetails.html",
    Topic: "A Rare Frog Finds a Mate",
    Description: `Lorem ipsum dolor sitamet consectetur adipisicing elito sed do eiusmod tempore.amet consectetur
       adipisicing elito sed do eiusmod tempore.<span class="blogs-paragraph">
         incididunt utlabore et dolore magna aliqua. Utenim ad minim veniam quis nostrud exercitation ullamco
          laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
           velit esse cillum dolore eu fugiat nulla pariatur.<br> Lorem ipsum dolor sit amet consectetur adipiscing
            elitsed do eiusmod tempor incididunt utlabore et dolore magna aliqua. Utenim ad minim veniam quis nostrud
             exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
              reprehenderit in voluptate velit eu fugiat nulla pariatur.<br>Lorem ipsum dolor sit amet consectetur 
              adipiscing elitsed do eiusmod tempor incididunt utlabore et dolore magna aliqua. Utenim ad minim veniam
               quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br> Lorem ipsum dolor sit
                 amet consectetur adipiscing elitsed do eiusmod tempor incididunt utlabore et dolore magna aliqua.
                  Utenim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                   consequat. Duis aute irure dolor in reprehenderit in voluptate velit esselore eu fugiat nulla 
                   pariatur.</span>`,
    Date: "28 Mar 2020",
    Category: "Nature",
  },
];
let blogDetailConteiner = document.getElementById("content3");
function blogDetail() {
  blogDetailConteiner.innerHTML = blogDetailData
    .map((detail) => {
      return `
 
        <div class ="blogDetail">
        <h3>${detail.Topic}</h3>
        <div class="blog-span d-flex justify-content-start gap-4">
        <div class="blog-releaseDate">
        <i class="far fa-calendar"></i>
        <span>${detail.Date}</span>
        </div>
        <div class="blog-categories">
        <i class="fas fa-bookmark"></i>
        <span>${detail.Category}</span>
        </div>
    </div>
        <img class= "w-100" src="./img/${detail.photo}" />
        <p>${detail.Description}</p>
        </div>
        `;
    })
    .join("");
}
blogDetail();
