package com.AmrFawry.MovieAPI.Services;

import com.AmrFawry.MovieAPI.DTO.RatingDTO;
import com.AmrFawry.MovieAPI.Repositories.MovieRepository;
import com.AmrFawry.MovieAPI.Repositories.RatingRepository;
import com.AmrFawry.MovieAPI.Repositories.UserRepository;
import com.AmrFawry.MovieAPI.entity.Movie;
import com.AmrFawry.MovieAPI.entity.Rating;
import com.AmrFawry.MovieAPI.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RatingService {

    private final RatingRepository ratingRepository;
    private final MovieRepository movieRepository;
    private final UserRepository userRepository;

    @Autowired
    public RatingService(RatingRepository ratingRepository, MovieRepository movieRepository, UserRepository userRepository) {
        this.ratingRepository = ratingRepository;
        this.movieRepository = movieRepository;
        this.userRepository = userRepository;
    }

    // Add or update a rating for a movie by a user
    public Rating addOrUpdateRating(Long userId, RatingDTO ratingDTO) {
        // Find the user and movie by their IDs
        Movie movie = movieRepository.findById(ratingDTO.getMovieId())
                .orElseThrow(() -> new RuntimeException("Movie not found"));
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));

        // Check if the user has already rated the movie
        Rating existingRating = ratingRepository.findByUserAndMovie(user, movie).orElse(null);

        if (existingRating != null) {
            // Update the existing rating
            existingRating.setRating(ratingDTO.getRating());
            return ratingRepository.save(existingRating);
        } else {
            // Create a new rating
            Rating newRating = new Rating();
            newRating.setMovie(movie);
            newRating.setUser(user);
            newRating.setRating(ratingDTO.getRating());
            return ratingRepository.save(newRating);
        }
    }

    // Get the average rating of a movie
    public double getAverageRating(Long movieId) {
        return ratingRepository.findAverageRatingByMovieId(movieId).orElse(0.0);
    }
}
