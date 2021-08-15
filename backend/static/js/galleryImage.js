// getting all the id for closing,image overlay, current page, total pages, overlay image title, next and previous button
const close = document.getElementById("close");
const imageOverlay = document.getElementById("imageOverlay");
const currentOverlayImage = document.getElementById("currentOverlayImage");
const totalImagesInAPage = document.getElementById("total");
const CurrentImageNumber = document.getElementById("current");
const previousImage = document.getElementById("previousImage");
const nextImage = document.getElementById("nextImage");
const galleryTitle = document.getElementById("galleryTitle");
let currentImageSrc,currentImageTitle;
// indexing is used to move between images by poing at the image and the title of the overlay image
let indexing = 0;
// This function open an overlay of the clicked gallery image and only shows that clicked images
function overlayImageOpening() {
  Array.prototype.slice
    .call(galleryContainer.children)
    .forEach(function (item, index) {
      item.addEventListener("click", (e) => {
        if (e.target.src !== undefined) {
          currentImageSrc = e.target.src;
          currentImageTitle = e.target.alt;
          galleryTitle.innerHTML = currentImageTitle;
          currentOverlayImage.src = currentImageSrc;
          imageOverlay.style.display = "block";
          totalImagesInAPage.innerHTML = galleryContainer.childElementCount;
          indexing = index;
          CurrentImageNumber.innerHTML = index + 1;
        }
      });
    });
}
// So after the overlay so user can see the images without having to go back this function helps go to the previous image from the current image overlay using the previous icon button
previousImage.addEventListener("click", () => {
  let CurrentImageNumberInNumber = Number(CurrentImageNumber.innerHTML);
  if (CurrentImageNumberInNumber > 1) {
    indexing -= 1;
    currentImageSrc = galleryContainer.children[indexing].children[0];
    console.log(currentImageSrc.alt);
    currentOverlayImage.src = currentImageSrc.src;
    galleryTitle.innerHTML = currentImageSrc.alt;
    CurrentImageNumber.innerHTML = CurrentImageNumberInNumber - 1;
  }
});
// So after the overlay so user can see the images without having to go back this function helps go to the next image from the current image overlay using the next icon button
nextImage.addEventListener("click", () => {
  let CurrentImageNumberInNumber = Number(CurrentImageNumber.innerHTML);
  let totalImagesInNumber = Number(totalImagesInAPage.innerHTML);
  if (CurrentImageNumberInNumber < totalImagesInNumber) {
    indexing += 1;
    currentImageSrc = galleryContainer.children[indexing].children[0];
    console.log(currentImageSrc.alt);
    currentOverlayImage.src = currentImageSrc.src;
    galleryTitle.innerHTML = currentImageSrc.alt;
    CurrentImageNumber.innerHTML = CurrentImageNumberInNumber + 1;
  }
});
// so user need something to get of the overlay image if user chooses to so there is a close button by which user can easily go out of the overlay.
close.addEventListener("click", () => {
  imageOverlay.style.display = "none";
});
// calling the function for the overlay image
overlayImageOpening();
