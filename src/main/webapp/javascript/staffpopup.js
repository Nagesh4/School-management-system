

const sserviceItems = document.querySelector(".slogcontainer");
const spopup = document.querySelector(".spopup-box")
const spopupCloseIcon = spopup.querySelector(".spopup-close-icon");

sserviceItems.addEventListener("click",function(event){
  if(event.target.tagName.toLowerCase() == "button"){
     const sitem =event.target.parentElement;
     const h2 = sitem.querySelector("h2").innerHTML;
     const sreadMoreCont = sitem.querySelector(".sread-more-cont").innerHTML;
     spopup.querySelector("h2").innerHTML = h2;
     spopup.querySelector(".spopup-body").innerHTML = sreadMoreCont;
     spopupBox();
  }
   event.stopImmediatePropagation();
})

spopupCloseIcon.addEventListener("click", spopupBox);

spopup.addEventListener("click", function(event){
   if(event.target == spopup){
      spopupBox();
   }
})

function spopupBox(){
  spopup.classList.toggle("sopen");
}
