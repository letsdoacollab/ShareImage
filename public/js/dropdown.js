// Get the dropdown element
var dropdown = document.querySelector(".dropdown");

// Get the dropdown content element
var dropdownContent = dropdown.querySelector(".dropdown-content");

// Toggle the dropdown content when the user clicks on the dropdown link
dropdown.addEventListener("click", function() {
  if (dropdownContent.style.display === "block") {
    dropdownContent.style.display = "none";
  } else {
    dropdownContent.style.display = "block";
  }
});
