import { createApp } from 'vue'

export function movies() {
  const app = createApp({
    data() {
      return {
        moviesData: [],
        selectedMovie: null,
        error: null,
        loadingMovies: true,
        loadingMovieDetails: false
      };
    },

    created() {
      this.getMovies();
    },

    methods: {
      getMovies() {
        fetch('http://your-api-url.ca/api/movies')
          .then(res => {
            if (!res.ok) {
              throw new Error('Failed to fetch the movies');
            }
            return res.json();
          })
          .then(movies => {
            this.moviesData = movies.data;
          })
          .catch(err => {
            this.error = err.message;
          })
          .finally(() => {
            this.loadingMovies = false;
          });
      },

      getMovie(id) {
        this.loadingMovieDetails = true;
        this.error = null;
        this.selectedMovie = null;

        fetch(`http://your-api-url.ca/api/movies/${id}`)
          .then(res => {
            if (!res.ok) {
              throw new Error('Failed to fetch movie details');
            }
            return res.json();
          })
          .then(movie => {
            if (!movie.data) {
              throw new Error('Sorry, we were unable to find the movie you requested');
            }

            const movieData = movie.data;

            this.selectedMovie = {
              title: movieData.title || 'Not available',
              director: movieData.director || 'Not available',
              genre: movieData.genre || 'Not available',
              image_url: movieData.image_url || ''
            };

            this.$nextTick(() => {
              window.scrollTo({
                top: document.body.scrollHeight,
                behavior: 'smooth'
              });

              gsap.from(this.$refs.movieInfoCon, {
                opacity: 0,
                y: 20,
                duration: 2,
                ease: "power2.out"
              });
            });
          })
          .catch(err => {
            this.error = err.message;
          })
          .finally(() => {
            this.loadingMovieDetails = false;
          });
      }
    }
  }).mount('#app');
}