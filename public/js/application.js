$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
  var img = document.querySelector("img") 
  img.addEventListener("click", function(){
    this.style.width = "300px"
  })

  var img2 = document.querySelectorAll("img")[1]
  img2.addEventListener("click", function(){
    this.classList.toggle("kitty")
  })
  
});
