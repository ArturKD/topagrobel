const menu = document.querySelector('.menu-button')
const activeMenu = document.querySelector('.navigation-button')
function toggle(){
    activeMenu.classList.toggle('active')
}
menu.addEventListener('click', toggle);

