const testimonys = [
  {
    id: 1,
    studentImage: "./img/Members/member2.jpg",
    studentName: "Nutan Raj Panta",
    Course: "Bsc (Hons) Computer Science",
    whatStudentHasToSay: `Lorem ipsum dolor sit amet consectetur adipisicing elit. 
    Expedita commodi tenetur impedit molestiae earum culpa quod veritatis. 
    Fugit officiis quae doloribus nemo? Eligendi, a. Ad possimus necessitatibus dicta labore ipsum.`,
  },
  {
    id: 2,
    studentImage: "./img/Members/member1.jpg",
    studentName: "Johnson Dhakal",
    Course: "Bsc (Hons) Computer Science",
    whatStudentHasToSay: `Lorem, ipsum dolor sit amet consectetur adipisicing elit.
     Architecto necessitatibus ex odit cumque minus inventore velit officia at consequatur
      doloremque quo facilis labore, deleniti animi ut accusantium quidem optio delectus?`,
  },
  {
    id: 3,
    studentImage: "./img/Members/member3.jpg",
    studentName: "Shiva Giri",
    Course: "Bsc (Hons) Computer Science",
    whatStudentHasToSay: `Lorem ipsum dolor sit amet, consectetur adipisicing elit.
     Provident in nam, sit cum mollitia quae eius aspernatur distinctio! 
     Non veritatis doloremque incidunt quae cumque, dolorum ratione neque aut dignissimos voluptate.`,
  },
  {
    id: 4,
    studentImage: "./img/Members/member1.jpg",
    studentName: "Nirmal Thing",
    Course: "Bsc (Hons) Computer Science",
    whatStudentHasToSay: `Lorem ipsum dolor sit amet consectetur adipisicing elit. 
    Sit nesciunt repellendus voluptate, obcaecati temporibus iste nam maiores nemo quasi ipsa, 
    beatae explicabo dolor, architecto libero velit doloribus soluta aspernatur illo.`,
  },
  {
    id: 5,
    studentImage: "./img/Members/member3.jpg",
    studentName: "Lalit Mahato",
    Course: "Bsc (Hons) Computer Science",
    whatStudentHasToSay: `Lorem ipsum dolor, sit amet consectetur adipisicing elit.
     Delectus, corporis? Consectetur numquam ex ducimus illum tempora ab ipsa cum aliquid hic!
      Voluptatibus quibusdam perspiciatis vitae officia quae quos expedita culpa.`,
  },
];

let testimonials = testimonys
  .map((testimony, testimonyIndex) => {
    // mapping through every testimony present in the testimonials
    let index = 0;
    // giving default postion as nextslide
    let positon = "nextSlide";
    if (testimonyIndex === index) {
      // giving the first slide a active status by giving it name activeSlide
      positon = "activeSlide";
    }
    if (
      testimonyIndex === index - 1 ||
      (index === 0 && testimonyIndex === testimonys.length - 1)
    ) {
      // giving the last slide a lastSlide name for so when I click prev button it code does not break
      positon = "lastSlide";
    }
    // Returning the mapped datas
    return `
        <article id="testimonys" class='testimony ${positon}' key=${testimony.id}>
            <img class='person-img' src=${testimony.studentImage} alt=${testimony.studentName} />
            <h4>${testimony.studentName}</h4>
            <p class='title'>${testimony.Course}</p>
            <p class='text'>${testimony.whatStudentHasToSay}</p>
        </article>
    `;
  })
  .join(""); // as the datas are seperated by commas tojoin the data without anything i gave a empty string to join them.

// Putting the mapped testimonies in testimony id in the index html file
document.getElementById("testimony").innerHTML = testimonials;

// For the prevoius slide button
let prev = document.getElementById("prev");
prev.addEventListener("click", () => {
  let testimony = document.getElementsByClassName("testimony");
  for (let index = 0; index < testimonys.length; index++) {
    if (testimony[index].classList.contains("activeSlide")) {
      // Key is a unique id given for each slide
      let key = parseInt(testimony[index].getAttribute("key"));
      if (key === testimonys[0].id) {
        //   For First Slide having activeSlide so to remove the lastSlide class name from the last testimony to the first testimony and make last testimony activeSlide
        testimony[testimonys.length - 1].classList.remove("lastSlide");
        testimony[testimonys.length - 1].classList.remove("nextSlide");
        testimony[testimonys.length - 1].classList.add("activeSlide");
        // Changing the second last from next slide to last slide as if i press next button the last button will be the second last slide
        testimony[testimonys.length - 2].classList.remove("nextSlide");
        testimony[testimonys.length - 2].classList.add("lastSlide");
        //   Now changing the First Slide from activeSlide to nextSlide
        testimony[0].classList.remove("activeSlide");
        testimony[0].classList.add("nextSlide");

        break;
      } else if (key === testimonys[testimonys.length - 1].id) {
        //   Now changing the Last Slide from activeSlide to nextSlide
        testimony[testimonys.length - 1].classList.remove("activeSlide");
        testimony[testimonys.length - 1].classList.add("nextSlide");
        // Changing the third last from next slide to last slide as if i press next button the last button will be the third last slide
        testimony[index - 2].classList.remove("nextSlide");
        testimony[index - 2].classList.add("lastSlide");
        //   Nov changing the slide after the first slide from lastSlide to activeSlide
        testimony[index - 1].classList.remove("lastSlide");
        testimony[index - 1].classList.add("activeSlide");

        break;
      } else {
        console.log("hello");
        // Changing the lastSlide from lastSlide to activeSlide
        testimony[index - 1].classList.remove("lastSlide");
        testimony[index - 1].classList.add("activeSlide");
        // Changing the current activeSlide to nextSlide
        testimony[index].classList.remove("activeSlide");
        testimony[index].classList.add("nextSlide");
        // Changing slide previous slide from nextSlide to lastSlide
        if (index === 1) {
          // If the active slide is the second slide it cannot go back two index as it becomes -1
          testimony[testimonys.length - 1].classList.remove("nextSlide");
          testimony[testimonys.length - 1].classList.add("lastSlide");
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
let next = document.getElementById("next");
next.addEventListener("click", () => {
  let testimony = document.getElementsByClassName("testimony");
  for (let index = 0; index < testimonys.length; index++) {
    if (testimony[index].classList.contains("activeSlide")) {
      // Key is a unique id given for each slide
      let key = parseInt(testimony[index].getAttribute("key"));
      if (key === testimonys[0].id) {
        //   For First Slide having activeSlide so to remove the lastSlide class name from the last testimony to the first testimony
        testimony[testimonys.length - 1].classList.remove("lastSlide");
        testimony[testimonys.length - 1].classList.add("nextSlide");
        //   Now changing the First Slide from activeSlide to lastSlide
        testimony[0].classList.remove("activeSlide");
        testimony[0].classList.add("lastSlide");
        //   Nov changing the slide after the first slide from nextSlide to activeSlide
        testimony[1].classList.remove("nextSlide");
        testimony[1].classList.add("activeSlide");
        break;
      } else if (key === testimonys[testimonys.length - 1].id) {
        //   For Last Slide having activeSlide so to remove the lastSlide class name from the last testimony to the first testimony and giving it a className nextSlide
        testimony[index - 1].classList.remove("lastSlide");
        testimony[index - 1].classList.add("nextSlide");
        //   Now changing the Last Slide from activeSlide to lastSlide
        testimony[testimonys.length - 1].classList.remove("activeSlide");
        testimony[testimonys.length - 1].classList.add("lastSlide");
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
