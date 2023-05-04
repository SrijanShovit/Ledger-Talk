import React, { useState } from "react";
import "./navbar.css";
const Navbar = () => {
    return (
        <>
            <nav className="main-nav">
                <div className="menu-link">
                    <ul>
                        <li>
                            <a href="#">All Questions</a>
                        </li>
                        <li>
                            <a href="#">Your Question</a>
                        </li>
                        <li>
                            <a href="#">Connect Wallet</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </>
    );
};

export default Navbar;