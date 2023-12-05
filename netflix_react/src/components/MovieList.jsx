import React, { useState, useEffect, useRef } from "react";
import "./movie-list.css";
import MovieItem from "./MovieItem.jsx";

function MovieList({ items, rankDisplayScope, onMovieSelect }) {
    const [isAtStart, setIsAtStart] = useState(true);
    const [isAtEnd, setIsAtEnd] = useState(false);
    const movieListRef = useRef(null);
    const scrollAmount = 900; // 스크롤할 양, 필요에 따라 조정

    const scrollLeft = () => {
        if (movieListRef.current) {
            const newScrollPosition = movieListRef.current.scrollLeft - scrollAmount;
            movieListRef.current.scrollTo({ left: newScrollPosition, behavior: 'smooth' });
        }
    };

    const scrollRight = () => {
        if (movieListRef.current) {
            const newScrollPosition = movieListRef.current.scrollLeft + scrollAmount;
            movieListRef.current.scrollTo({ left: newScrollPosition, behavior: 'smooth' });
        }
    };

    const checkScrollPosition = () => {
        const container = movieListRef.current;
        if (!container) return;

        const isAtStart = container.scrollLeft <= 0;
        const isAtEnd = container.scrollLeft + container.offsetWidth >= container.scrollWidth;

        setIsAtStart(isAtStart);
        setIsAtEnd(isAtEnd);
    };

    useEffect(() => {
        const container = movieListRef.current;
        if (container) {
            container.addEventListener('scroll', checkScrollPosition);
            checkScrollPosition(); // 초기 위치 체크
        }

        return () => {
            if (container) {
                container.removeEventListener('scroll', checkScrollPosition);
            }
        };
    }, []);

    return (
        <div className="movie-list-container">
            {!isAtStart && <button id="left" className="scroll-button" onClick={scrollLeft}><img src="/left-arrow.png" alt="" /></button>}
            <section className="movie-list" ref={movieListRef}>
                {items.map((item, key) => (
                    <MovieItem
                        key={key}
                        index={key}
                        item={item}
                        isRankDisplay={(key < rankDisplayScope) || (rankDisplayScope === undefined)}
                        onMovieSelect={onMovieSelect}
                    />
                ))}
            </section>
            {!isAtEnd && <button id="right" className="scroll-button" onClick={scrollRight}><img src="/right-arrow.png" alt="" /></button>}
        </div>
    );
}

export default MovieList;

