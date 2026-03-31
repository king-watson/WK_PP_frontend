const genres = document.querySelectorAll('.genre');

function handleGenreClick(e) {
  e.preventDefault();
  genres.forEach(function(g) {
    g.classList.remove('active');
  });
  e.currentTarget.classList.add('active');
}

genres.forEach(function(genre) {
  genre.addEventListener('click', handleGenreClick);
});
