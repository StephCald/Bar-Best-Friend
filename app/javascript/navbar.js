const changeActiveItemNavbar = () => {
  if (document.getElementById("navbar")) {
    const icons = document.querySelectorAll("#navbar .icon");
    icons.forEach((icon) => {
      icon.addEventListener("click", (event) => {
        event.target.classList.add("active_tab");
      });
    });
  }
};
