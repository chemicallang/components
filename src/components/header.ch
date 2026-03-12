func GlassHeader(page : &mut HtmlPage, active : *char) {
    #css {
        .header {
            position: fixed; top: 0; left: 0; right: 0; z-index: 1000;
            padding: 1.25rem 0;
            background: rgba(10, 10, 12, 0.7);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.08);
        }
        .header-content {
            display: flex; justify-content: space-between; align-items: center;
        }
        .logo {
            font-size: 1.25rem; font-weight: 900; color: #fff; text-decoration: none;
            display: flex; align-items: center; gap: 0.5rem;
        }
        .logo-icon {
            width: 24px; height: 24px; background: linear-gradient(135deg, #00d4ff, #9130ff);
            border-radius: 6px; transform: rotate(45deg);
        }
        .nav-links { display: flex; gap: 2.5rem; }
        .nav-links a {
            color: #888; text-decoration: none; font-size: 0.9rem; font-weight: 500;
            transition: color 0.3s; position: relative;
        }
        .nav-links a:hover { color: #fff; }
        .nav-links a.active { color: #fff; }
        .nav-links a.active::after {
            content: ''; position: absolute; bottom: -6px; left: 0; right: 0;
            height: 2px; background: #00d4ff; border-radius: 2px;
        }
    }
    #html {
        <nav class="header">
            <div class="container header-content">
                <a href="index.html" class="logo">
                    <div class="logo-icon"></div>
                    CHEMICAL
                </a>
                <div class="nav-links">
                    <a href="index.html" class={if(strcmp(active, "home") == 0) "active" else ""}>Home</a>
                    <a href="integration.html" class={if(strcmp(active, "integration") == 0) "active" else ""}>Integration</a>
                    <a href="components.html" class={if(strcmp(active, "components") == 0) "active" else ""}>Components</a>
                    <a href="markdown.html" class={if(strcmp(active, "markdown") == 0) "active" else ""}>Markdown</a>
                </div>
            </div>
        </nav>
    }
}

func SetupThemeScript(page : &mut HtmlPage) {
    #html {
        <script>{"""
            (function() {
                var stored = localStorage.getItem('chx-theme') || 'dark';
                document.body.classList.add('chx-default', stored);
                var toggle = document.getElementById('theme-toggle');
                if(toggle) {
                    toggle.addEventListener('click', function() {
                        var next = document.body.classList.contains('dark') ? 'light' : 'dark';
                        document.body.classList.remove('dark', 'light');
                        document.body.classList.add(next);
                        localStorage.setItem('chx-theme', next);
                    });
                }
            })();
        """}</script>
    }
}