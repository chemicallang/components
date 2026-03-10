func SocialFooter(page : &mut HtmlPage) {
    #css {
        .footer { padding: 8rem 0 4rem; text-align: center; }
        .footer-logo { font-weight: 900; color: #fff; margin-bottom: 2rem; font-size: 1.5rem; opacity: 0.5; }
        .footer-links { display: flex; justify-content: center; gap: 3rem; margin-bottom: 3rem; }
        .footer-links a { color: #666; text-decoration: none; font-size: 0.85rem; transition: color 0.3s; }
        .footer-links a:hover { color: #aaa; }
        .copyright { color: #444; font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.1em; }
    }
    #html {
        <footer class="footer container">
            <div class="footer-logo">CHEMICAL</div>
            <div class="footer-links">
                <a href="#">Github</a>
                <a href="#">Documentation</a>
                <a href="#">Compiler API</a>
                <a href="#">Community</a>
            </div>
            <p class="copyright">&copy; 2026 Chemical Language Foundation. Built with native binaries.</p>
        </footer>
    }
}