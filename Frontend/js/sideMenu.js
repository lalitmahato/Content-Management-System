document.addEventListener("DOMContentLoaded", function (event) {
  let sideNavIcon = document.getElementById("sideNavToogle");
  let sideNav = document.querySelector(".side-navbar");
  sideNavIcon.value = true;
  sideNavIcon.addEventListener("click", function () {
    if (sideNavIcon.value === false) {
      sideNav.style.width = "0%";
      sideNav.style.display = "none";
      sideNavIcon.value = true;
    } else if (sideNavIcon.value === true) {
      sideNav.style.width = "18%";
      sideNav.style.display = "block";
      sideNavIcon.value = false;
    } else {
      alert(
        "It Seems an error has occured with the side navigation please wait while the bug is being fixed"
      );
    }
  });
});
