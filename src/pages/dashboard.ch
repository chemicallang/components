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