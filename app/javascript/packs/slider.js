feather.replace();

const nextEl = document.querySelector("#next");
const previousEl = document.querySelector("#previous");
const sliderEl = document.querySelector("#slider");
const sliderImgs = sliderEl.querySelectorAll("img");
const totalImgs = sliderImgs.length;
let imgWidth;

function handleResize() {
  imgWidth = sliderEl.offsetWidth;
}
handleResize();
window.addEventListener("resize", handleResize);

const loopAutoNext = (time) => {
  setTimeout(() => {
    onNextClick();
    loopAutoNext(9000);
  }, time);
};

loopAutoNext(9000);

//Next Slide ---------------
nextEl.addEventListener("click", onNextClick);
previousEl.addEventListener("click", onPreviousClick);

function onNextClick() {
  sliderEl.scrollLeft += imgWidth;
  //return to beginning
  const sliderFullWidth = sliderEl.scrollWidth;
  const lastSlide = sliderFullWidth - imgWidth;

  toggleBullet(false);

  if (lastSlide == Math.round(sliderEl.scrollLeft)) {
    sliderEl.scrollLeft = 0;
  }
}
//Previous Slide -----------
function onPreviousClick() {
  const imgWidth = sliderEl.offsetWidth;
  sliderEl.scrollLeft -= imgWidth;

  toggleBullet(true);
}
