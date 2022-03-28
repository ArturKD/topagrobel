//----------------------------------menu toggle----------------------------------//

const menu = document.querySelector('.menu-button');
const activeMenuButton = document.querySelector('.navigation-button');
const activeMenuNavigation = document.querySelector('.navigation');
const headerLogo = document.querySelector('.header-logo');
const navigationRow = document.querySelector('.navigation-row')
function toggleMenu(){
    activeMenuButton.classList.toggle('active')
    activeMenuNavigation.classList.toggle('active')
    headerLogo.classList.toggle('active')
    navigationRow.classList.toggle('active')
}
//---------------------------------- carousel buttons ----------------------------------//

const carousel = document.querySelector('.carousel')
const carouselTitle = document.querySelectorAll('.bar')
const carouselSubText = document.querySelectorAll('.sub')
const carouselButtons = document.querySelectorAll('.carousel-button')
const carouselNavigation = document.querySelectorAll('.nav-link')
const carouselNavigationContainer = document.querySelector('.nav-links')
const carouselBackground = document.querySelectorAll('.img')
let targetIndex = 0;
let targetLength = [...carouselNavigation].length - 1;

function carouselToggle(event) {
    if (event.target.classList.contains('nav-link')) {
        targetIndex = [...event.target.parentElement.children].indexOf(event.target);
        carouselSlideRemove();
        carouselSlideActivate();
    }
}

function carouselSlideRemove() {
    carouselNavigation.forEach((element) => element.classList.remove('active'));
    carouselBackground.forEach(element => element.classList.remove('active'));
    carouselSubText.forEach(element => element.classList.remove('active'));
    carouselTitle.forEach(element => element.classList.remove('active'));
    carouselButtons.forEach(element => element.classList.remove('active'));
}

function carouselSlideActivate() {
    carouselNavigation[targetIndex].classList.add('active');
    carouselBackground[targetIndex].classList.add('active');
    carouselSubText[targetIndex].classList.add('active');
    carouselTitle[targetIndex].classList.add('active');
    carouselButtons[targetIndex].classList.add('active');
    clearTimer();
}

//---------------------------------- carousel timer ----------------------------------//

let timeoutCarousel = setInterval(carouselTimer, 10000);

function carouselTimer() {
    if(targetIndex < targetLength) {
        carouselSlideRemove();
        carouselSlideActivate();
        targetIndex += 1;
    } else {
        carouselSlideRemove();
        carouselSlideActivate();
        targetIndex = 0;
    }
}
function clearTimer() {
    clearInterval(timeoutCarousel);
    timeoutCarousel = setInterval(carouselTimer, 10000);
}

//---------------------------------- carousel swipe ----------------------------------//

let xDown = null;
let yDown = null;

function getTouches(event) {
    return event.touches
};

function handleTouches(event) {
    const firstTouch = getTouches(event)[0];
    xDown = firstTouch.clientX;
    yDown = firstTouch.clientY;
};

function handleMove(event) {
    if ( ! xDown || ! yDown ) {
        return;
    }
    let xUp = event.touches[0].clientX;
    let yUp = event.touches[0].clientY;
    let xDiff = xDown - xUp;
    let yDiff = yDown - yUp;
    if ( Math.abs(xDiff) > Math.abs(yDiff) ) {
        if (xDiff > 0) {
            carouselSwipeRight();
        } else {
            carouselSwipeLeft();
        }
    }
        xDown = null;
        yDown = null;
};

function carouselSwipeRight() {
    if(targetIndex < targetLength) {
        targetIndex += 1;
        carouselSlideRemove();
        carouselSlideActivate();
    } else {
        targetIndex = 0;
        carouselSlideRemove();
        carouselSlideActivate();
    }
};

function carouselSwipeLeft() {
    if(targetIndex > 0) {
        targetIndex -= 1;
        carouselSlideRemove();
        carouselSlideActivate();
    } else {
        targetIndex = targetLength;
        carouselSlideRemove();
        carouselSlideActivate();
    }
};

//---------------------------------- animation ----------------------------------//

const column = document.querySelectorAll('.column');

const imageGalleryObserver = new IntersectionObserver( entries => {
    entries.forEach(entry => {
        if(entry.isIntersecting) {
            column.forEach(element => element.classList.add('active'));
            column.forEach((element, index) => {
                element.style.backgroundImage = 'url(./assets/img/gallery/photo-'+`${index}`+'.jpg)'; //Background image for gallery
            })
        }
    })
});
const statObserver = new IntersectionObserver( entries => {
    entries.forEach(entry => {
        if(entry.isIntersecting) {
            entry.target.classList.add('active');
        }
    })
});

//---------------------------------- dark carousel ----------------------------------//


//---------------------------------- Preloads ----------------------------------//


//---------------------------------- listeners ----------------------------------//

carouselNavigationContainer.addEventListener('click', carouselToggle);
menu.addEventListener('click', toggleMenu);
window.addEventListener('load', carouselTimer);
carousel.addEventListener('touchstart', handleTouches);
carousel.addEventListener('touchmove', handleMove);
imageGalleryObserver.observe(document.querySelector('.column'));
statObserver.observe(document.querySelector('.stat'));
