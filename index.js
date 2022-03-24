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

const carouselTitle = document.querySelectorAll('.bar')
const carouselSubText = document.querySelectorAll('.sub')
const carouselButtons = document.querySelectorAll('.carousel-button')
const carouselNavigation = document.querySelectorAll('.nav-link')
const carouselNavigationContainer = document.querySelector('.nav-links')
const carouselBackground = document.querySelectorAll('.img')
let targetIndex = 0;
function carouselToggle(event) {
    if (event.target.classList.contains('nav-link')) {
        carouselNavigation.forEach(element => element.classList.remove('active'));
        carouselBackground.forEach(element => element.classList.remove('active'));
        carouselSubText.forEach(element => element.classList.remove('active'));
        carouselTitle.forEach(element => element.classList.remove('active'));
        carouselButtons.forEach(element => element.classList.remove('active'));
        targetIndex = [...event.target.parentElement.children].indexOf(event.target);
    }
        carouselNavigation[targetIndex].classList.add('active');
        carouselBackground[targetIndex].classList.add('active');
        carouselSubText[targetIndex].classList.add('active');
        carouselTitle[targetIndex].classList.add('active');
        carouselButtons[targetIndex].classList.add('active');
}
//---------------------------------- listeners ----------------------------------//
carouselNavigationContainer.addEventListener('click', carouselToggle)
menu.addEventListener('click', toggleMenu);
window.addEventListener('load', carouselToggle)

