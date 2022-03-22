const menu = document.getElementById('menu-button')
const activeMenu = document.getElementById('navigation-button')
console.log(activeMenu);
function toggle(){
    activeMenu.classList.toggle('active')
}
menu.addEventListener('click', toggle);

