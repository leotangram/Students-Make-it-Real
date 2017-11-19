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
  
  var btn = document.getElementsByTagName("button")[1]
  btn.addEventListener("click",function(){
    document.body.classList.toggle("purple")
  })

  // step five
  // select buttons
  var p1Button = document.querySelector("#p1")
  var p2Button = document.getElementById("p2")
  var reset = document.querySelector("#reset")

  // select displays
  var p1Display = document.querySelector("#p1Display")
  var p2Display = document.querySelector("#p2Display")
  var winningScoreDisplay = document.querySelector("p span")
  
  // select input
  var numInput = document.querySelector("input")

  // variables
  var p1Score = 0;
  var p2Score = 0;
  var gameOver = false
  var winningScore = 5

  // event listeners
  p1Button.addEventListener("click", function(){
    if(!gameOver){
      p1Score++
      if(p1Score === winningScore){
        p1Display.classList.add("winner")
        gameOver = true
      }
      p1Display.textContent = p1Score
    }
  }) 

  p2Button.addEventListener("click", function(){
    if(!gameOver){
      p2Score++
      if(p2Score === winningScore){
        p2Display.classList.add("winner")
        gameOver = true
      }  
      p2Display.textContent = p2Score
    }
  })

  reset.addEventListener("click", function(){
    resetGame();
  })


  numInput.addEventListener("change", function(){
    winningScoreDisplay.textContent = this.value
    winningScore = Number(this.value)
    resetGame();
  })


  // functions
    function resetGame(){
    gameOver = false
    p1Score = 0
    p1Display.textContent = p1Score
    p1Display.classList.remove("winner")
    p2Score = 0
    p2Display.textContent = p2Score
    p2Display.classList.remove("winner")
  }

  // step 6
  var lis = document.querySelectorAll(".cat")

  for (var i = 0; i < lis.length; i++) {
    lis[i].addEventListener("mouseover", function(){
      this.classList.add("selected")
    })
    lis[i].addEventListener("mouseout", function(){
      this.classList.remove("selected")
    })   
    lis[i].addEventListener("click", function(){
      this.classList.toggle("done")
    })
  }
  






});
