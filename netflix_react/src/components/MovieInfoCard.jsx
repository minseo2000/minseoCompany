import React from "react";
import "./movie-info-card.css";

function MovieInfoCard({ selectedMovie, onMovieSelect }) {
    const darkSpaceHandleClick = () => {
        onMovieSelect(null);
    }

    const movieCardHandleClick = (event) => {
        console.log("movie card clicked");
        event.stopPropagation();
    }

    return (
        <div id="dark-background-space" className={selectedMovie ? "active" : ""} onClick={darkSpaceHandleClick}>
            <section className="movie-info-card" onClick={movieCardHandleClick}>
                {selectedMovie}
            </section>
        </div>
    );
}

export default MovieInfoCard;
