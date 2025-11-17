function openTab(evt, tabName) {
  // Hide all tab content
  const contents = document.querySelectorAll('.tab-content');
  contents.forEach(content => content.style.display = 'none');

  // Remove active class from all buttons
  const links = document.querySelectorAll('.tab-link');
  links.forEach(link => link.classList.remove('active'));

  // Show selected tab and mark button active
  document.getElementById(tabName).style.display = 'block';
  evt.currentTarget.classList.add('active');
}
// Set default tab
document.addEventListener('DOMContentLoaded', () => {
  document.querySelector('.tab-link').click();
}); 
