@extern public func strcmp(s1 : *char, s2 : *char) : int

#react ReactCounter(props) {
    var [count, setCount] = useState(0)
    return (
        <div style={{ textAlign: 'center', padding: '1rem' }}>
            <h3>React Component</h3>
            <button onClick={() => setCount((c) => c + 1)} className={props.className}>
                Count: {count}
            </button>
        </div>
    )
}

#preact PreactCounter(props) {
    var [count, setCount] = useState(0)
    return (
        <div style={"text-align: center; padding: 1rem "}>
            <h3>Preact Component</h3>
            <button onClick={() => setCount((c) => c + 1)} className={props.className}>
                Count: {count}
            </button>
        </div>
    )
}

#solid SolidCounter(props) {
    var [count, setCount] = createSignal(0)
    return (
        <div style={"text-align: center; padding: 1rem "}>
            <h3>Solid Component</h3>
            <button onClick={() => setCount((c) => c + 1)} className={props.className}>
                Count: {count()}
            </button>
        </div>
    )
}

func PageLayout(page : &mut HtmlPage, active : *char) {
    #css {
        body {
            margin: 0; line-height: 1.6;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
            background-color: #0a0a0a; color: #e0e0e0;
        }
        .header {
            display: flex; justify-content: space-between; align-items: center;
            padding: 1rem 5%; background: rgba(18, 18, 18, 0.8);
            backdrop-filter: blur(12px); position: sticky; top: 0; z-index: 100;
            border-bottom: 1px solid #222;
        }
        .logo { font-size: 1.5rem; font-weight: 800; color: #00d4ff; letter-spacing: -0.5px; }
        .nav-links a { margin-left: 2rem; color: #999; text-decoration: none; transition: all 0.3s; font-weight: 500; }
        .nav-links a:hover { color: #00d4ff; }
        .nav-links a.active { color: #fff; border-bottom: 2px solid #00d4ff; padding-bottom: 4px; }
        .footer { padding: 4rem 5%; background: #080808; border-top: 1px solid #1a1a1a; text-align: center; color: #555; font-size: 0.9rem; }
        .container { max-width: 1100px; margin: 0 auto; padding: 4rem 2rem; }
    }
    #html {
        <nav class="header">
            <div class="logo">CHEMICAL</div>
            <div class="nav-links">
                <a href="index.html" class={if(strcmp(active, "home") == 0) "active" else ""}>Home</a>
                <a href="components.html" class={if(strcmp(active, "components") == 0) "active" else ""}>Components</a>
                <a href="markdown.html" class={if(strcmp(active, "markdown") == 0) "active" else ""}>Markdown</a>
                <a href="layout.html" class={if(strcmp(active, "layout") == 0) "active" else ""}>Layout</a>
            </div>
        </nav>
    }
}

func Footer(page : &mut HtmlPage) {
    #html {
        <footer class="footer">
            <p>&copy; 2026 Chemical Language Foundation. Built with passion & compilation macros.</p>
        </footer>
    }
}

func HomePage(page : &mut HtmlPage) {
    page.defaultPrepare()
    page.appendTitle("Chemical Showcase - Home")
    
    PageLayout(page, "home")
    
    #css {
        .hero { text-align: center; padding: 6rem 1rem; }
        .hero h1 { font-size: 4rem; font-weight: 900; margin-bottom: 1.5rem; background: linear-gradient(135deg, #00d4ff 0%, #9130ff 100%); }
        .hero p { font-size: 1.25rem; color: #aaa; max-width: 600px; margin: 0 auto 3rem; }
        .grid { display: grid; grid-template-columns: ${"repeat(auto-fit, minmax(300px, 1fr))"}; gap: 2rem; margin-top: 4rem; }
        .card { background: #121212; border: 1px solid #222; padding: 2rem; border-radius: 16px; transition: all 0.3s; }
        .card:hover { border-color: #00d4ff; transform: translateY(-8px); background: #161616; }
        .card h2 { margin-top: 0; color: #00d4ff; }
    }
    
    #html {
        <div class="hero">
            <h1>The Hyper-Extensible Language</h1>
            <p>Chemical is designed for the modern web, allowing seamless integration of top-tier JS frameworks directly into native code.</p>
            <div class="container">
                <div class="grid">
                    <div class="card">
                        <h2>Multi-Framework</h2>
                        <p>Write React, Solid, or Preact components right inside your Chemical source files.</p>
                    </div>
                    <div class="card">
                        <h2>Zero Config</h2>
                        <p>Macros handle the heavy lifting, automatically mounting and wiring your components.</p>
                    </div>
                    <div class="card">
                        <h2>High Performance</h2>
                        <p>Compiled logic combined with the beauty of modern web interfaces.</p>
                    </div>
                </div>
            </div>
        </div>
    }
    
    Footer(page)
}

func ComponentsPage(page : &mut HtmlPage) {
    page.defaultPrepare()
    page.defaultPreactSetup()
    page.defaultReactSetup()
    page.defaultSolidSetup()
    page.appendTitle("Chemical Showcase - Components")
    
    PageLayout(page, "components")
    
    var btnStyle = #css {
        padding: 0.75rem 1.5rem;
        background: linear-gradient(135deg, #00d4ff 0%, #008fb3 100%);
        color: white;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 212, 255, 0.3);
        font-weight: bold;
    }
    
    #css {
        .comp-grid { display: grid; grid-template-columns: ${"repeat(3, 1fr)"}; gap: 2rem; margin-top: 2rem; }
        .comp-box { background: #121212; border: 1px solid #222; border-radius: 16px; padding: 2rem; }
    }
    
    #html {
        <div class="container">
            <h1 style="text-align:center">Components Showcase</h1>
            <p style="text-align:center; color:#999; margin-bottom:4rem">One language, three frameworks. Perfectly synchronized.</p>
            
            <div class="comp-grid">
                <div class="comp-box">
                    <ReactCounter className={`"{btnStyle}"`} />
                </div>
                <div class="comp-box">
                    <PreactCounter className={`"{btnStyle}"`} />
                </div>
                <div class="comp-box">
                    <SolidCounter className={`"{btnStyle}"`} />
                </div>
            </div>
        </div>
    }
    
    Footer(page)
}

func MdMacro(page : &mut HtmlPage) {
#md
# Beautiful Markdown Macro

This entire block is rendered using the `#md` macro at compile time.

-   **Fast**: Pre-parsed into static HTML.
-   **Safe**: Sanitized and structured.
-   **Native**: Part of the Chemical ecosystem.

### Code Example

```chemical
func hello() {
    println("Hello from Chemical!");
}
```

You can even use `inline code` or **bold** text effortlessly.
#endmd
}

func MarkdownPage(page : &mut HtmlPage) {
    page.defaultPrepare()
    page.appendTitle("Chemical Showcase - Markdown")
    
    PageLayout(page, "markdown")
    
    #css {
        .md-container { background: #121212; border: 1px solid #222; border-radius: 20px; padding: 3rem; margin-top: 2rem; }
        .md-container h1 { color: #00d4ff; border-bottom: 1px solid #333; padding-bottom: 1rem; }
        .md-container code { background: #000; padding: 0.2rem 0.4rem; border-radius: 4px; color: #ff007f; }
    }
    
    #html {
        <div class="container">
            <div class="md-container">
                {MdMacro(page)}
            </div>
        </div>
    }
    
    Footer(page)
}

func LayoutPage(page : &mut HtmlPage) {
    page.defaultPrepare()
    page.appendTitle("Chemical Showcase - Layout")
    
    PageLayout(page, "layout")
    
    #css {
        .dashboard { display: grid; grid-template-columns: ${"250px 1fr"}; gap: 2rem; margin-top: 2rem; }
        .sidebar { background: #121212; border: 1px solid #222; border-radius: 16px; padding: 1.5rem; }
        .main-content { display: grid; grid-template-columns: ${"repeat(2, 1fr)"}; gap: 1.5rem; }
        .stat-card { background: #181818; border: 1px solid #333; border-radius: 12px; padding: 1.5rem; }
        .stat-card h4 { color: #888; margin: 0 0 0.5rem 0; }
        .stat-value { font-size: 2rem; font-weight: 700; color: #fff; }
    }
    
    #html {
        <div class="container">
            <h1>Layout Capabilities</h1>
            <div class="dashboard">
                <div class="sidebar">
                    <ul style="list-style:none; padding:0; line-height:3">
                        <li style="color:#00d4ff; font-weight:bold">Dashboard</li>
                        <li>Analytics</li>
                        <li>Customers</li>
                        <li>Settings</li>
                    </ul>
                </div>
                <div class="main-content">
                    <div class="stat-card">
                        <h4>Total Revenue</h4>
                        <div class="stat-value">$124,500</div>
                    </div>
                    <div class="stat-card">
                        <h4>Active Users</h4>
                        <div class="stat-value">12.8k</div>
                    </div>
                    <div class="stat-card" style="grid-column: span 2">
                        <h4>Performance Graph</h4>
                        <div style="height:100px; background:#111; border:1px dashed #444; margin-top:1rem; border-radius:8px; display:flex; align-items:center; justify-content:center; color:#444">
                            [ Placeholder for SVG Graph ]
                        </div>
                    </div>
                </div>
            </div>
        </div>
    }
    
    Footer(page)
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
    
    // 3. Markdown Page
    var mdP = HtmlPage()
    MarkdownPage(mdP)
    mdP.writeToDirectory("output", "markdown")
    
    // 4. Layout Page
    var layout = HtmlPage()
    LayoutPage(layout)
    layout.writeToDirectory("output", "layout")
    
    return 0
}
