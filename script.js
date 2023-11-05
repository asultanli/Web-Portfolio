// function to toggle mobile menu
function toggleMobileMenu() {
  var menu = document.querySelector('nav ul');
  menu.classList.toggle('active');
}

// function to validate form inputs
function validateForm() {
  var name = document.querySelector('#name').value;
  var email = document.querySelector('#email').value;
  var message = document.querySelector('#message').value;

  if (name.trim() === '') {
    alert('Please enter your name');
    return false;
  }

  if (email.trim() === '') {
    alert('Please enter your email');
    return false;
  }

  if (message.trim() === '') {
    alert('Please enter your message');
    return false;
  }

  return true;
}

// AJAX function to load more projects
function loadMoreProjects() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      var projectsContainer = document.querySelector('#projects');
      projectsContainer.innerHTML += this.responseText;
    }
  };
  xhttp.open('GET', 'load-more-projects.php', true);
  xhttp.send();
}



