import { createApp } from 'vue';

let appStarted = false;

export function movies() {
  if (appStarted) {
    return;
  }

  appStarted = true;

  createApp({
    data() {
      return {
        horrorMovies: [],
        comedyMovies: [],
        selectedMovie: null,
        error: null,
        loadingMovies: true,
        loadingMovieDetails: false
      };
    },

    created() {
      this.getAllMovies();
    },

    methods: {
      getAllMovies() {
        Promise.all([
          fetch('http://127.0.0.1:8000/api/horror'),
          fetch('http://127.0.0.1:8000/api/comedy')
        ])
          .then(([horrorResponse, comedyResponse]) => {
            if (!horrorResponse.ok) {
              throw new Error('Failed to fetch horror movies');
            }

            if (!comedyResponse.ok) {
              throw new Error('Failed to fetch comedy movies');
            }

            return Promise.all([horrorResponse.json(), comedyResponse.json()]);
          })
          .then(([horrorData, comedyData]) => {
            this.horrorMovies = Array.isArray(horrorData) ? horrorData : [];
            this.comedyMovies = Array.isArray(comedyData) ? comedyData : [];
          })
          .catch(err => {
            this.error = err.message;
          })
          .finally(() => {
            this.loadingMovies = false;
          });
      },

      getMovie(id, type) {
        this.loadingMovieDetails = true;
        this.error = null;
        this.selectedMovie = null;

        fetch(`http://127.0.0.1:8000/api/${type}/${id}`)
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
              if (this.$refs.movieInfoCon) {
                gsap.from(this.$refs.movieInfoCon, {
                  opacity: 0,
                  y: 20,
                  duration: 1.2,
                  ease: 'power2.out'
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