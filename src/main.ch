#react ReactCounter(props) {
    var [count, setCount] = useState(0)
    return (
        <div style={{ textAlign: 'center', padding: '2rem', background: 'rgba(255,255,255,0.03)', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.1)' }}>
            <h3 style={{ color: '#61dafb', marginBottom: '1.5rem' }}>React</h3>
            <button 
                onClick={() => setCount((c) => c + 1)} 
                className={props.className}
                style={{ cursor: 'pointer', transition: 'all 0.2s' }}
            >
                Count: {count}
            </button>
        </div>
    )
}

#preact PreactCounter(props) {
    var [count, setCount] = useState(0)
    return (
        <div style={{ textAlign: 'center', padding: '2rem', background: 'rgba(255,255,255,0.03)', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.1)' }}>
            <h3 style={"color: #673ab8; margin-bottom: 1.5rem"}>Preact</h3>
            <button onClick={() => setCount((c) => c + 1)} className={props.className}>
                Count: {count}
            </button>
        </div>
    )
}

#solid SolidCounter(props) {
    var [count, setCount] = createSignal(0)
    return (
        <div style={{ textAlign: 'center', padding: '2rem', background: 'rgba(255,255,255,0.03)', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.1)' }}>
            <h3 style={"color: #2c4f7c; margin-bottom: 1.5rem"}>Solid</h3>
            <button onClick={() => setCount((c) => c + 1)} className={props.className}>
                Count: {count()}
            </button>
        </div>
    )
}

func GlobalStyles(page : &mut HtmlPage) {
    #css {
        body {
            margin: 0; line-height: 1.6;
            font-family: 'Inter', -apple-system, system-ui, sans-serif;
            background-color: #050505; color: #a1a1a1;
            overflow-x: hidden;
        }
        * { box-sizing: border-box; }
        h1, h2, h3 { color: #fff; font-weight: 800; letter-spacing: -0.02em; }
        .container { max-width: 1200px; margin: 0 auto; padding: 0 2rem; }
    }
    #html {
        <style>{"""
            @keyframes float {
                0% { transform: translateY(0px); }
                50% { transform: translateY(-20px); }
                100% { transform: translateY(0px); }
            }
        """}</style>
    }
}

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
                    <a href="components.html" class={if(strcmp(active, "components") == 0) "active" else ""}>Components</a>
                    <a href="markdown.html" class={if(strcmp(active, "markdown") == 0) "active" else ""}>Markdown</a>
                    <a href="layout.html" class={if(strcmp(active, "layout") == 0) "active" else ""}>Dashboard</a>
                </div>
            </div>
        </nav>
    }
}

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

func HomePage(page : &mut HtmlPage) {
    page.defaultPrepare()
    page.appendTitle("Chemical - The Future of Web Programming")
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
            background: linear-gradient(135deg, #fff 0%, #888 100%);
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
                <a href="components.html" class="btn-primary">Explore Demos</a>
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
}

func ComponentsPage(page : &mut HtmlPage) {
    page.defaultPrepare()
    page.defaultPreactSetup()
    page.defaultReactSetup()
    page.defaultSolidSetup()
    page.appendTitle("Component Interaction - Chemical")
    GlobalStyles(page)
    GlassHeader(page, "components")
    
    var btnStyle = #css {
        padding: 0.75rem 2rem; border-radius: 12px; border: none; font-weight: 700;
        background: linear-gradient(135deg, #00d4ff, #9130ff); color: #fff;
        box-shadow: 0 10px 30px rgba(0, 212, 255, 0.3); letter-spacing: 0.05em;
    }
    
    #css {
        .page-header { padding: 12rem 0 4rem; text-align: center; }
        .page-header h1 { font-size: 3.5rem; margin-bottom: 1rem; }
        .page-header p { color: #666; max-width: 600px; margin: 0 auto; }
        
        .comp-showcase { display: grid; grid-template-columns: repeat(3, 1fr); gap: 3rem; margin-top: 4rem; }
        .comp-item { animation: float 6s ease-in-out infinite; }
        .comp-item:nth-child(2) { animation-delay: 1s; }
        .comp-item:nth-child(3) { animation-delay: 2s; }
    }
    
    #html {
        <div class="container">
            <div class="page-header">
                <h1>Tri-Framework Sync</h1>
                <p>Chemical's component bridge allows you to use multiple frameworks simultaneously, sharing logic and state across the divide.</p>
            </div>
            
            <div class="comp-showcase">
                <div class="comp-item">
                    <ReactCounter className={btnStyle} />
                </div>
                <div class="comp-item">
                    <PreactCounter className={btnStyle} />
                </div>
                <div class="comp-item">
                    <SolidCounter className={btnStyle} />
                </div>
            </div>
        </div>
    }
    SocialFooter(page)
}

func MarkdownPage(page : &mut HtmlPage) {
    page.defaultPrepare()
    page.appendTitle("Static Markdown - Chemical")
    GlobalStyles(page)
    GlassHeader(page, "markdown")
    
    #css {
        .md-wrapper { padding: 12rem 0 4rem; }
        .md-box { 
            background: #0d0d0f; border: 1px solid rgba(255,255,255,0.05); 
            border-radius: 40px; padding: 6rem;
            box-shadow: 0 50px 100px -20px rgba(0,0,0,0.5);
        }
        /* Markdown Theme Overrides */
        .md h1 { font-size: 3.5rem; margin-top: 0; color: #fff; }
        .md p { font-size: 1.25rem; color: #888; }
        .md code { background: #1a1a1c; color: #00d4ff; padding: 0.2rem 0.6rem; border-radius: 8px; }
        .md pre { background: #1a1a1c; padding: 2rem; border-radius: 20px; border: 1px solid rgba(255,255,255,0.05); }
    }
    
    #html {
        <div class="container md-wrapper">
            <div class="md-box md">
                {MarkdownFutureProofDocs(page)}
            </div>
        </div>
    }
    SocialFooter(page)
}

func MarkdownFutureProofDocs(page : &mut HtmlPage) {
#md
# Future-Proof Documentation

This section is powered by the `#md` compiled macro. Unlike other solutions, this is 100% static and processed within the compiler itself.

## Why use Chemical Macros?

1.  **Fastest Execution**: Zero runtime overhead.
2.  **Type Safe**: All values are checked at compile time.
3.  **Modern**: Full support for Github-flavored Markdown.

### Example Logic

```chemical
func main() {
    // This is native code
    const version = "2.0.0-gold";
    println("Chemical version: {version}");
}
```

Experience the beauty of **native speed** combined with **web flexibility**.
#endmd
}

func DashboardPage(page : &mut HtmlPage) {
    page.defaultPrepare()
    page.appendTitle("Enterprise Dashboard - Chemical")
    GlobalStyles(page)
    GlassHeader(page, "layout")
    
    #css {
        .dashboard-wrapper { padding: 10rem 0 4rem; }
        .dashboard { 
            display: grid; 
            grid-template-columns: 280px 1fr; 
            gap: 2rem; 
        }
        .aside { 
            background: rgba(255,255,255,0.02); 
            border-radius: 24px; padding: 2rem;
            border: 1px solid rgba(255,255,255,0.05);
            height: fit-content;
        }
        .aside h4 { color: #444; text-transform: uppercase; font-size: 0.75rem; letter-spacing: 2px; margin-bottom: 1.5rem; }
        .aside ul { list-style: none; padding: 0; }
        .aside li { margin-bottom: 1.25rem; }
        .aside a { color: #888; text-decoration: none; transition: color 0.3s; font-size: 0.95rem; }
        .aside a:hover, .aside a.active { color: #00d4ff; }
        
        .main { display: grid; grid-template-columns: 1fr 1fr; gap: 2rem; }
        .card { 
            background: rgba(255,255,255,0.02); border: 1px solid rgba(255,255,255,0.05);
            border-radius: 24px; padding: 2.5rem;
        }
        .card.full { grid-column: span 2; }
        .stat-label { color: #666; font-size: 0.85rem; margin-bottom: 0.5rem; }
        .stat-val { font-size: 2.5rem; font-weight: 800; color: #fff; }
        .placeholder-graph { 
            height: 200px; background: rgba(0,0,0,0.2); border-radius: 16px; 
            margin-top: 2rem; display: flex; align-items: center; justify-content: center;
            border: 1px dashed rgba(255,255,255,0.05); color: #333; font-weight: 700;
        }
    }
    
    #html {
        <div class="container dashboard-wrapper">
            <div class="dashboard">
                <div class="aside">
                    <h4>Overview</h4>
                    <ul>
                        <li><a href="#" class="active">Performance Metrics</a></li>
                        <li><a href="#">Memory Usage</a></li>
                        <li><a href="#">Network Traffic</a></li>
                    </ul>
                    <h4 style="margin-top: 3rem">System</h4>
                    <ul>
                        <li><a href="#">Compiler Logs</a></li>
                        <li><a href="#">Binary Output</a></li>
                        <li><a href="#">Settings</a></li>
                    </ul>
                </div>
                <div class="main">
                    <div class="card">
                        <div class="stat-label">Response Time</div>
                        <div class="stat-val">0.32ms</div>
                    </div>
                    <div class="card">
                        <div class="stat-label">Payload Size</div>
                        <div class="stat-val">1.2kb</div>
                    </div>
                    <div class="card full">
                        <div class="stat-label">Compilation Speed (Pages per minute)</div>
                        <div class="stat-val">1,240</div>
                        <div class="placeholder-graph">
                            SYSTEM ANALYTICS GRAPH
                        </div>
                    </div>
                </div>
            </div>
        </div>
    }
    SocialFooter(page)
}

public func main() : int {
    // 1. Home Page
    var home = HtmlPage()
    HomePage(home)
    home.writeToDirectory("output", "index")
    
    // 2. Components Page
    var components = HtmlPage()
    ComponentsPage(components)
    components.writeToDirectory("output", "components")
    // printf("%s\n", components.toString().data());
    
    // 3. Markdown Page
    var mdP = HtmlPage()
    MarkdownPage(mdP)
    mdP.writeToDirectory("output", "markdown")
    
    // 4. Layout Page
    var layout = HtmlPage()
    DashboardPage(layout)
    layout.writeToDirectory("output", "layout")
    
    return 0
}
