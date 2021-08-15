// For the prevoius slide button
let prev = document.getElementById("prev");
let next = document.getElementById("next");
let testimony = document.getElementsByClassName("testimony");

if (testimony.length === 1 || testimony.length === 0) {
  if (testimony.length === 1) {
    testimony[0].classList.add("activeSlide");
  }
  prev.style.display = "none";
  next.style.display = "none";
} else {
  if (testimony.length < 3) {
    prev.style.display = "none";
    next.style.display = "none";
  }
  for (let index = 0; index < testimony.length; index++) {
    if (testimony.length === 2) {
      if (index === 0) {
        testimony[index].classList.add("activeSlide");
      } else if (index === testimony.length - 1) {
        testimony[index].classList.add("lastSlide");
      }
    } else {
      if (index === 0) {
        testimony[index].classList.add("activeSlide");
      } else if (index === testimony.length - 1) {
        testimony[index].classList.add("lastSlide");
      } else {
        testimony[index].classList.add("nextSlide");
      }
    }
  }

  // For the prevoius slide button
  prev.addEventListener("click", () => {
    for (let index = 0; index < testimony.length; index++) {
      if (testimony[index].classList.contains("activeSlide")) {
        // Key is a unique id given for each slide
        let key = parseInt(testimony[index].getAttribute("key"));
        if (key === parseInt(testimony[0].getAttribute("key"))) {
          //   For First Slide having activeSlide so to remove the lastSlide class name from the last testimony to the first testimony and make last testimony activeSlide
          testimony[testimony.length - 1].classList.remove("lastSlide");
          testimony[testimony.length - 1].classList.remove("nextSlide");
          testimony[testimony.length - 1].classList.add("activeSlide");
          // Changing the second last from next slide to last slide as if i press next button the last button will be the second last slide
          testimony[testimony.length - 2].classList.remove("nextSlide");
          testimony[testimony.length - 2].classList.add("lastSlide");
          //   Now changing the First Slide from activeSlide to nextSlide
          testimony[0].classList.remove("activeSlide");
          testimony[0].classList.add("nextSlide");

          break;
        } else if (
          key === parseInt(testimony[testimony.length - 1].getAttribute("key"))
        ) {
          //   Now changing the Last Slide from activeSlide to nextSlide
          testimony[testimony.length - 1].classList.remove("activeSlide");
          testimony[testimony.length - 1].classList.add("nextSlide");
          // Changing the third last from next slide to last slide as if i press next button the last button will be the third last slide
          testimony[index - 2].classList.remove("nextSlide");
          testimony[index - 2].classList.add("lastSlide");
          //   Nov changing the slide after the first slide from lastSlide to activeSlide
          testimony[index - 1].classList.remove("lastSlide");
          testimony[index - 1].classList.add("activeSlide");

          break;
        } else {
          // Changing the lastSlide from lastSlide to activeSlide
          console.log(index);
          testimony[index - 1].classList.remove("lastSlide");
          testimony[index - 1].classList.add("activeSlide");
          // Changing the current activeSlide to nextSlide
          testimony[index].classList.remove("activeSlide");
          testimony[index].classList.add("nextSlide");
          // Changing slide previous slide from nextSlide to lastSlide
          if (index === 1) {
            // If the active slide is the second slide it cannot go back two index as it becomes -1
            testimony[testimony.length - 1].classList.remove("nextSlide");
            testimony[testimony.length - 1].classList.add("lastSlide");
          } else {
            // so if the index can go -2 it is for the slides above slide 2.
            testimony[index - 2].classList.remove("nextSlide");
            testimony[index - 2].classList.add("lastSlide");
          }
          break;
        }
      }
    }
  });

  // For the next slide button

  next.addEventListener("click", () => {
    for (let index = 0; index < testimony.length; index++) {
      if (testimony[index].classList.contains("activeSlide")) {
        // Key is a unique id given for each slide
        let key = parseInt(testimony[index].getAttribute("key"));
        if (key === parseInt(testimony[0].getAttribute("key"))) {
          //   For First Slide having activeSlide so to remove the lastSlide class name from the last testimony to the first testimony
          testimony[testimony.length - 1].classList.remove("lastSlide");
          testimony[testimony.length - 1].classList.add("nextSlide");
          //   Now changing the First Slide from activeSlide to lastSlide
          testimony[0].classList.remove("activeSlide");
          testimony[0].classList.add("lastSlide");
          //   Nov changing the slide after the first slide from nextSlide to activeSlide
          testimony[1].classList.remove("nextSlide");
          testimony[1].classList.add("activeSlide");
          break;
        } else if (
          key === parseInt(testimony[testimony.length - 1].getAttribute("key"))
        ) {
          //   For Last Slide having activeSlide so to remove the lastSlide class name from the last testimony to the first testimony and giving it a className nextSlide
          testimony[index - 1].classList.remove("lastSlide");
          testimony[index - 1].classList.add("nextSlide");
          //   Now changing the Last Slide from activeSlide to lastSlide
          testimony[testimony.length - 1].classList.remove("activeSlide");
          testimony[testimony.length - 1].classList.add("lastSlide");
          //   Nov changing the slide after the first slide from nextSlide to activeSlide
          testimony[0].classList.remove("nextSlide");
          testimony[0].classList.add("activeSlide");
          break;
        } else {
          // Changing slide previous slide from lastSlide to nextSlide
          testimony[index - 1].classList.remove("lastSlide");
          testimony[index - 1].classList.add("nextSlide");
          // Changing the current activeSlide to lastSlide
          testimony[index].classList.remove("activeSlide");
          testimony[index].classList.add("lastSlide");
          // Changing the nextSlide from nextSlide to activeSlide
          testimony[index + 1].classList.remove("nextSlide");
          testimony[index + 1].classList.add("activeSlide");
          break;
        }
      }
    }
  });
  // to check if the slider is being hovered I have given a inital false status
  let isHovered = false;
  // So every 4s or 4000ms it check if the slider is being hovered or not and if it is being hovered it returns nothing
  // but if it is not being hovered it dispatched the click button
  setInterval(() => {
    if (isHovered) {
      // returing nothing
      return;
    } else {
      // calling the click button
      next.click();
    }
  }, 4000);

  // If the slider is being hovered the hovered status changes to true and it slider auto sliding stops.
  document.getElementById("slider").addEventListener("mouseenter", function () {
    isHovered = true;
  });
  // But when the sliders is not being hovered or left from being hovered it again changes the hovered status to false so auto slide can run again
  document.getElementById("slider").addEventListener("mouseleave", function () {
    isHovered = false;
  });
}
