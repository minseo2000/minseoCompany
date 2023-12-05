import React, { useState, useEffect } from 'react';
import styles from './header.module.css';
import { Link } from 'react-router-dom';

function Header() {
    const [isTop, setIsTop] = useState(true);
    const [isDropdownVisible, setIsDropdownVisible] = useState(false);

    const handleScroll = () => {
        const position = window.scrollY;
        setIsTop(position <= 0);
    };

    const toggleDropdown = () => {
        setIsDropdownVisible(!isDropdownVisible);
    };

    const hideDropdown = () => {
        setIsDropdownVisible(false);
    };

    useEffect(() => {
        window.addEventListener('scroll', handleScroll);
        return () => {
            window.removeEventListener('scroll', handleScroll);
        };
    }, []);

    return (
        <header className={`${styles.header} ${isTop ? '' : styles.headerScrolled}`}>
            <img src="/Netflix_Logo_PMS.png" alt="Netflix Logo" id={styles.logo} />
            <div>
                <input type="text" />
                <button>
                    <img src="/Magnifying_glass.svg" alt="Search" />
                </button>
                <div id='profile-container'>
                    <img src="https://picsum.photos/200/300" alt="Profile" id={styles.profile} onClick={toggleDropdown} />
                    {isDropdownVisible && (
                        <div className={styles.dropdownMenu} onMouseLeave={hideDropdown}>
                            <Link to="/">계정설정</Link>
                            <Link to="/">로그아웃</Link>
                        </div>
                    )}
                </div>
            </div>
        </header>
    );
}

export default Header;
