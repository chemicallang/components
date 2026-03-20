func HomePage(page : &mut HtmlPage) {

    page.appendTitle("Chemical - The Future of Web Programming")
    page.defaultPrepare()
    page.injectDefaultComponentsTheme()
    GlobalStyles(page)
    GlassHeader(page, "home")

    #css {
        .hero { padding: 12rem 0 8rem; position: relative; }
        .hero-glow {
            position: absolute; top: 0; left: 50%; transform: translateX(-50%);
            width: 800px; height: 600px;
            background: radial-gradient(circle at center, rgba(0, 212, 255, 0.1) 0%, transparent 70%);
            z-index: -1;
        }
        .hero h1 {
            font-size: 5rem; line-height: 1.1; margin-bottom: 2rem; max-width: 800px;
        }
        .hero p { font-size: 1.5rem; color: #888; max-width: 600px; margin-bottom: 4rem; }
        .cta-group { display: flex; gap: 1.5rem; }
        .btn-primary {
            padding: 1rem 2.5rem; background: #fff; color: #000; border-radius: 40px;
            text-decoration: none; font-weight: 700; transition: transform 0.2s;
        }
        .btn-primary:hover { transform: scale(1.05); }
        .btn-secondary {
            padding: 1rem 2.5rem; background: rgba(255,255,255,0.05); color: #fff; border-radius: 40px;
            text-decoration: none; font-weight: 700; border: 1px solid rgba(255,255,255,0.1);
            transition: all 0.2s;
        }
        .btn-secondary:hover { background: rgba(255,255,255,0.1); }

        .feature-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 2.5rem; margin-top: 10rem; }
        .feat-card {
            padding: 3rem; background: rgba(255,255,255,0.02); border: 1px solid rgba(255,255,255,0.05);
            border-radius: 32px; transition: all 0.3s;
        }
        .feat-card:hover { border-color: rgba(255,255,255,0.2); background: rgba(255,255,255,0.04); }
        .feat-card h3 { font-size: 1.5rem; margin-bottom: 1rem; color: #fff; }
        .feat-card p { color: #666; font-size: 1rem; margin: 0; }
    }

    #html {
        <div class="hero container">
            <div class="hero-glow"></div>
            <h1>The only language you will ever need.</h1>
            <p>A native, hyper-extensible programming language built for the next generation of performance-critical software.</p>
            <div class="cta-group">
                <a href="demo.html" class="btn-primary">Explore Demos</a>
                <a href="#" class="btn-secondary">View Source</a>
            </div>

            <div class="feature-grid">
                <div class="feat-card">
                    <h3>React Native</h3>
                    <p>Mount complex React applications directly into your compiled binaries without external JS files.</p>
                </div>
                <div class="feat-card">
                    <h3>Zero Overhead</h3>
                    <p>Chemical compiles to tiny, blazing-fast native code with a memory footprint smaller than C++.</p>
                </div>
                <div class="feat-card">
                    <h3>Universal UI</h3>
                    <p>One language to rule the DOM. Switch between Solid, Preact, and React in the same file.</p>
                </div>
            </div>
        </div>
    }
    SocialFooter(page)
    SetupThemeScript(page)
}