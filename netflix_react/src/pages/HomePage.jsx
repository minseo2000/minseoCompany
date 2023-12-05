import React, { useState } from "react";
import "./home-page.css";
import Header from "../components/Header";
import MovieList from "../components/MovieList"; 
import MovieInfoCard from "../components/MovieInfoCard";

const items = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q"];

function HomePage() {
    const [selectedMovie, setSelectedMovie] = useState(null);
    const handleMovieSelect = (movie) => {
        setSelectedMovie(movie);
    }

    return (
        <div id="home-page">
            <Header />
            <div id="home-page-content">
                <img src="/test.jpeg" alt="" />
            </div>
            <main>
                <MovieInfoCard selectedMovie={selectedMovie} onMovieSelect={handleMovieSelect} />
                <MovieList items={items} onMovieSelect={handleMovieSelect} /> 
                <MovieList items={items} rankDisplayScope={0} onMovieSelect={handleMovieSelect} /> 
                <MovieList items={items} rankDisplayScope={9} onMovieSelect={handleMovieSelect} /> 
            </main>
        </div>
    );
}

export default HomePage;
