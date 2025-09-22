// Footer Year Auto-Update
document.addEventListener("DOMContentLoaded", function(){
  const y = document.getElementById("year");
  if (y) y.textContent = new Date().getFullYear();
});
