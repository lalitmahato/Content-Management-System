const close = document.getElementById("close");
const imageOverlay = document.getElementById("imageOverlay");
const currentOverlayImage = document.getElementById("currentOverlayImage");
const totalImagesInAPage = document.getElementById("total");
const CurrentImageNumber = document.getElementById("current");
const previousImage = document.getElementById("previousImage");
const nextImage = document.getElementById("nextImage");
let currentImageSrc;
let indexing = 0;
function overlayImageOpening() {
  Array.prototype.slice
    .call(galleryContainer.children)
    .forEach(function (item, index) {
      item.addEventListener("click", (e) => {
        if (e.target.src !== undefined) {
          currentImageSrc = e.target.src;
          currentOverlayImage.src = currentImageSrc;
          imageOverlay.style.display = "block";
          totalImagesInAPage.innerHTML = galleryContainer.childElementCount;
          indexing = index;
          CurrentImageNumber.innerHTML = index + 1;
        }
      });
    });
}

previousImage.addEventListener("click", () => {
  let CurrentImageNumberInNumber = Number(CurrentImageNumber.innerHTML);
  if (CurrentImageNumberInNumber > 1) {
    indexing -= 1;
    console.log(galleryContainer.children[indexing].children[0]);
    currentImageSrc = galleryContainer.children[indexing].children[0];
    currentOverlayImage.src = currentImageSrc.src;
    CurrentImageNumber.innerHTML = CurrentImageNumberInNumber - 1;
  }
});

nextImage.addEventListener("click", () => {
  let CurrentImageNumberInNumber = Number(CurrentImageNumber.innerHTML);
  let totalImagesInNumber = Number(totalImagesInAPage.innerHTML);
  if (CurrentImageNumberInNumber < totalImagesInNumber) {
    indexing += 1;
    currentImageSrc = galleryContainer.children[indexing].children[0];
    currentOverlayImage.src = currentImageSrc.src;
    CurrentImageNumber.innerHTML = CurrentImageNumberInNumber + 1;
  }
});

close.addEventListener("click", () => {
  imageOverlay.style.display = "none";
});

overlayImageOpening();
