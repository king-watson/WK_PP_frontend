# Vue.js + Laravel API Assignment

A single-page web application built with Vue.js that connects to a custom Laravel REST API to fetch and display a sorted listing of entries with detailed views.

## Project Overview

This project was built as part of a web development course assignment. It demonstrates connecting a Vue.js frontend to a Laravel backend API, including fetching a list of entries, clicking to view individual entry details, loading states, and error handling.

## Tech Stack

- **Frontend:** Vue.js (single HTML file, no .vue components)
- **Backend:** Laravel (PHP REST API)
- **Animations:** GreenSock (GSAP)
- **Database:** MySQL

## Features

- Fetches and displays a sorted list of entries from the API
- Click any entry to load its details without navigating away
- Loading indicators while data is being fetched
- Error handling for failed API requests
- Fully responsive from mobile to desktop

## Setup Instructions

1. Clone the repository
```bash
   git clone <your-repo-link>
```
2. Import the `.sql` file into your local MySQL database
3. Copy `.env` and update your database credentials
4. Install Laravel dependencies
```bash
   composer install
```
5. Run the Laravel development server
```bash
   php artisan serve
```
6. Open `index.html` in your browser

## Team

- Kingsley Watson
- Pranav Pranav