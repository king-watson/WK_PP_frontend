import { createApp } from 'vue'

export function movies() {
  createApp({
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
        fetch('http://127.0.0.1:8000/api/horror')
          .then(res => {
            if (!res.ok) {
              throw new Error('Failed to fetch the movies');
            }
            return res.json();
          })
          .then(movies => {
            this.moviesData = movies;
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

        fetch(`http://127.0.0.1:8000/api/horror/${id}`)
          .then(res => {
            if (!res.ok) {
              throw new Error('Failed to fetch movie details');
            }
            return res.json();
          })
          .then(movieData => {
            this.selectedMovie = {
              title: movieData.movie_title || 'Not available',
              director: movieData.movie_director || 'Not available',
              genre: movieData.movie_genre || 'Not available',
              image_url: movieData.movie_image || ''
            };

            this.$nextTick(() => {
              window.scrollTo({
                top: document.body.scrollHeight,
                behavior: 'smooth'
              });

              if (this.$refs.movieInfoCon) {
                gsap.from(this.$refs.movieInfoCon, {
                  opacity: 0,
                  y: 20,
                  duration: 2,
                  ease: "power2.out"
                });
              }
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