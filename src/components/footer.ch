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

func demo_site_footer_styles(page : &mut HtmlPage) : *char {
    #css {
        .demo-site-footer {
            margin-top: 2rem;
            padding: 2.2rem;
            border-radius: 28px;
            border: 1px solid var(--chx-border);
            background: linear-gradient(160deg, rgba(255, 255, 255, 0.72), rgba(255, 255, 255, 0.28));
            box-shadow: var(--chx-shadow-sm);
            display: grid;
            gap: 1.2rem;
        }
        .demo-site-footer-head {
            display: flex;
            justify-content: space-between;
            gap: 1rem;
            align-items: start;
        }
        .demo-site-footer-copy {
            display: grid;
            gap: 0.45rem;
        }
        .demo-site-footer-copy p {
            margin: 0;
            color: var(--chx-text-muted);
            max-width: 620px;
        }
        .demo-site-footer-actions {
            display: flex;
            gap: 0.75rem;
            flex-wrap: wrap;
        }
        .demo-site-footer-meta {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 0.85rem;
        }
        .demo-site-footer-stat {
            padding: 0.95rem 1rem;
            border-radius: 18px;
            border: 1px solid var(--chx-border);
            background: rgba(255, 255, 255, 0.52);
        }
        .demo-site-footer-stat strong {
            display: block;
            margin-top: 0.3rem;
            font-size: 1rem;
        }
        .demo-site-footer-note {
            margin: 0;
            color: var(--chx-text-muted);
            font-size: 0.92rem;
        }
        @media (max-width: 960px) {
            .demo-site-footer-head { grid-template-columns: 1fr; display: grid; }
            .demo-site-footer-meta { grid-template-columns: 1fr; display: grid; }
        }
    }
    return "";
}

public #universal DemoSiteFooter(props) {
    ${demo_site_footer_styles(page)}
    return <footer class={"demo-site-footer " + props.variant}>
            <div class="demo-site-footer-head">
                <div class="demo-site-footer-copy">
                    <Caption>{props.eyebrow}</Caption>
                    <H3>{props.title}</H3>
                    <p>{props.summary}</p>
                </div>
                <div class="demo-site-footer-actions">
                    <ButtonPrimary>{props.ctaPrimary}</ButtonPrimary>
                    <ButtonGhost>{props.ctaSecondary}</ButtonGhost>
                </div>
            </div>
            <div class="demo-site-footer-meta">
                <div class="demo-site-footer-stat"><Caption>Using</Caption><strong>Shared components</strong></div>
                <div class="demo-site-footer-stat"><Caption>Theme scope</Caption><strong>{props.variant}</strong></div>
                <div class="demo-site-footer-stat"><Caption>Focus</Caption><strong>{props.eyebrow}</strong></div>
            </div>
            <p class="demo-site-footer-note">{props.note}</p>
        </footer>
}
