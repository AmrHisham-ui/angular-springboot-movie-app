# Movie Management Application

## Description

This is a full-stack movie management application built using Angular 17, Spring Boot, and MySQL. The application allows admins to manage a movie database and enables users to browse and rate movies.

## Features

### Admin Dashboard

- Login functionality for admin users.
- Search and load movie lists from the OMDB API.
- Add selected movies to the database.
- Remove movies from the database.
- Batch add or remove movies.
- Pagination support for managing large datasets.

### Regular User Dashboard

- Login functionality for regular users.
- Browse the full list of movies added by the admin.
- View movie details.
- Search for specific movies.
- Rate movies.

## Technologies Used

- **Frontend:** Angular 17, PrimeNG
- **Backend:** Spring Boot 3.4.3, Java 17
- **Database:** MySQL
- **Authentication:** JWT-based authentication
- **External API:** OMDB API for movie information

## Setup Instructions

### Prerequisites

Ensure you have the following installed:

- Node.js and npm
- Angular CLI
- Java 17
- MySQL
- Postman (optional, for testing API endpoints)

### Backend Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/AmrHisham-ui/angular-springboot-movie-app.git
   cd angular-springboot-movie-app/backend
   ```
2. Configure the MySQL database:
   - Create a database named `movie_management`.
   - Update `application.properties` with your MySQL credentials.
3. Build and run the backend:
   ```bash
   mvn spring-boot:run
   ```
   The backend will start on `http://localhost:8080`.

### Frontend Setup

1. Navigate to the frontend directory:
   ```bash
   cd angular-springboot-movie-app/frontend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the Angular development server:
   ```bash
   ng serve
   ```
   The frontend will be available at `http://localhost:4200`.

## User Roles

- **Admin:** Can add/remove movies, manage users, and access all functionalities.
- **Regular User:** Can browse movies, search, and rate them.

## Notes

- JWT authentication is required for accessing secured routes.
- The OMDB API key needs to be configured in the backend to fetch movie details.



---

For any issues, feel free to contact me or raise an issue in the GitHub repository.

