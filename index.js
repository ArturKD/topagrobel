const menu = document.querySelector('.menu-button');
const activeMenuButton = document.querySelector('.navigation-button');
const activeMenuNavigation = document.querySelector('.navigation')
function toggle(){
    activeMenuButton.classList.toggle('active')
    activeMenuNavigation.classList.toggle('active')
}
menu.addEventListener('click', toggle);

