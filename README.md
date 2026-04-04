![Alt text](https://s3-alpha.figma.com/hub/file/6420427527/dee13030-a0be-4af2-ad32-944f8a2e05ef-cover.png)

# Vue.js + Laravel API Assignment

A single-page web application built with Vue.js that connects to a custom Laravel REST API to fetch and display a sorted listing of entries with detailed views.

## Project Overview

This project was built as part of a web development course assignment. It demonstrates connecting a Vue.js frontend to a Laravel backend API, including fetching a list of entries, clicking to view individual entry details, loading states, and error handling. Here we have created the page for displaying 2 movie genres - Horror and Comedy.

We have tried to give it a Netflix UI feel as much as possible.

## Tech Stack

- **Frontend:** Vue.js (single HTML file, no .vue components)
- **Backend:** Laravel (PHP REST API)
- **Animations:** GreenSock (GSAP)
- **Database:** MySQL

## Features

- There are 2 categories of Movies that it discplays ___Horror___ and ___Comedy___.
- Fetches and displays a sorted list of movie titles, directors, poster and genre from the API
- Click any entry to load its details without navigating away from the base page.
- Loading indicators while data is being fetched
- Error handling for failed API requests
- Fully responsive from mobile to desktop
- Smooth scroll animation is being used in the website.

## Setup Instructions

1. Clone the repository
```bash
   git clone <WK_PP_frontend>
```
2. Import the `.sql` file into your local MySQL database (It is names as movies_db.sql in the backend folder itself)
3. Copy `.env` and update your database credentials (Especially change the DB_DATABASE=example_db to DB_DATABASE=movies_db)
4. Install Laravel dependencies
```bash
   composer install
```
5. Run the Laravel development server
```bash
   php artisan serve
```
6. Open `index.html` in your browser

## Done by -

- ___Kingsley Watson___ - Front-end developer
- ___Pranav Pranav___ - Back-end developer