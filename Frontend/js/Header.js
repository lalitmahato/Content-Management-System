const header = [
  {
    id: 1,
    navName: "About Us",
    navLocation: "about.html",
    subNav: false,
    subNavNames: null,
  },
  {
    id: 2,
    navName: "Events",
    navLocation: "events.html",
    subNav: false,
    subNavNames: null,
  },
  {
    id: 3,
    navName: "Courses",
    navLocation: "#",
    subNav: true,
    subNavNames: [
      {
        subNavName: "Courses",
        subName: "BIT",
        subLocation: "BitCourseDetails.html",
      },
      {
        subNavName: "Courses",
        subName: "BIBM",
        subLocation: "#",
      },
    ],
  },
  {
    id: 4,
    navName: "Gallery",
    navLocation: "gallery.html",
    subNav: false,
    subNavNames: null,
  },
  {
    id: 5,
    navName: "Blog",
    navLocation: "blog.html",
    subNav: false,
    subNavNames: null,
  },
  {
    id: 6,
    navName: "Contact Us",
    navLocation: "contact.html",
    subNav: false,
    subNavNames: null,
  },
  {
    id: 7,
    navName: "Login",
    navLocation: "login.html",
    subNav: false,
    subNavNames: null,
  },
];

let subCoursesNavigations = header
  .map((subNavigation) => {
    if (subNavigation.subNav == true) {
      return Object.values(subNavigation.subNavNames)
        .map((sub) => {
          if (sub.subNavName == "Courses")
            return `
                <li><a class="dropdown-item" href="${sub.subLocation}">${sub.subName}</a></li>
                `;
        })
        .join("");
    }
  })
  .join("");

let subAboutNavigation = header
  .map((subNavigation) => {
    if (subNavigation.subNav == true) {
      return Object.values(subNavigation.subNavNames)
        .map((sub) => {
          if (sub.subNavName == "About Us")
            return `
              <li><a class="dropdown-item" href="${sub.subLocation}">${sub.subName}</a></li>
              `;
        })
        .join("");
    }
  })
  .join("");

let courses = "Courses";
let aboutus = "About Us";

let navigation = header
  .map((nav) => {
    if (nav.subNav == true && courses.localeCompare(nav.navName)) {
      return `
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="${nav.navLocation}" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        ${nav.navName}
        </a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
        ${subAboutNavigation}
        </ul>
        `;
    } else if (nav.subNav == true && aboutus.localeCompare(nav.navName)) {
      return `
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="${nav.navLocation}" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        ${nav.navName}
        </a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
        ${subCoursesNavigations}
        </ul>
        `;
    } else {
      if (window.location.pathname.split("/")[1] === nav.navLocation) {
        return `<li class="nav-item"><a class="nav-link active" href="${nav.navLocation}">${nav.navName}</a></li>`;
      } else {
        return `<li class="nav-item"><a class="nav-link " href="${nav.navLocation}">${nav.navName}</a></li>`;
      }
    }
  })
  .join("");

document.getElementById("header").innerHTML = `
<nav class="navbar navbar-expand-lg navbar-light bg-white text-dark shadow-sm bg-body fixed-top">
<div class="container-fluid">
    <a class="navbar-brand ml-3" href="index.html"><img src="./img/hck_ing_group_logo.png"
            alt="Herald College" /></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">${navigation}</ul>
    </div>
</div>
</nav>
`;
