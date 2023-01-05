const menu = document.getElementById("menu_logo")

menu.addEventListener("click", (event) => {
    if ($("#navbar").hasClass("clickHide")) {
      $("#navbar").removeClass("clickHide");
      $("#menu_logo").html("-");
    }
    else {
      $("#navbar").addClass("clickHide");
      $("#menu_logo").html("+");
    }
});
