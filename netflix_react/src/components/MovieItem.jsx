import React from "react";
import "./movie-item.css";

function MovieItem({ index, item, isRankDisplay, onMovieSelect }) {
    const handleClick = () => {
        onMovieSelect(item);
    }

    return (
        <article className="movie-item" key={index} onClick={handleClick}>
            <img src="#" alt="" />
            {isRankDisplay && <div className="ranking">
                <span className="rank">{index + 1}</span>
            </div>}
        </article>
    )
}

export default MovieItem;