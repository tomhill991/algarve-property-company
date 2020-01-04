const modal = document.querySelector(".modal");
const trigger = document.querySelector(".trigger");
const closeButton = document.querySelector(".close-button");

function toggleModal(event) {
  console.log(event)
  modal.classList.toggle("modal");
  modal.classList.toggle("show-modal");

}

// function windowOnClick(event) {
//   console.log(event, 'it has been tapped')
//   if(event.target === modal) {
//     toggleModal();
//   }
// }

trigger.addEventListener("click", toggleModal);
closeButton.addEventListener("click", toggleModal);
// window.addEventListener("click", windowOnClick);

export { toggleModal };
