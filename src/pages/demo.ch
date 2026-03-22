func InjectDemoThemes(page : &mut HtmlPage) {
    page.injectComponentsThemeScope(".demo-aurora", """
        --chx-font: 'Space Grotesk', system-ui, sans-serif;
        --chx-primary: #251646;
        --chx-primary-hover: #35215f;
        --chx-primary-fg: #fff7ed;
        --chx-bg: #fff4eb;
        --chx-surface: #fffaf4;
        --chx-surface-2: #ffe7d3;
        --chx-border: #f4c7a1;
        --chx-border-strong: #ecb178;
        --chx-text-main: #2a163f;
        --chx-text-muted: #7b5a74;
        --chx-accent: #ff7a59;
        --chx-error: #dc2626;
        --chx-success: #059669;
        --chx-ring: rgba(37, 22, 70, 0.12);
        --chx-shadow-sm: 0 8px 18px rgba(105, 58, 35, 0.08);
        --chx-shadow: 0 18px 40px rgba(105, 58, 35, 0.12);
        --chx-shadow-lg: 0 28px 60px rgba(105, 58, 35, 0.16);
    """)

    page.injectComponentsThemeScope(".demo-serene", """
        --chx-font: 'Manrope', system-ui, sans-serif;
        --chx-primary: #0f3d4c;
        --chx-primary-hover: #155468;
        --chx-primary-fg: #effcfb;
        --chx-bg: #f1fbfa;
        --chx-surface: #ffffff;
        --chx-surface-2: #dff4f2;
        --chx-border: #bfdfdb;
        --chx-border-strong: #94c9c0;
        --chx-text-main: #10323e;
        --chx-text-muted: #54727b;
        --chx-accent: #14b8a6;
        --chx-error: #ef4444;
        --chx-success: #0f9d7a;
        --chx-ring: rgba(15, 61, 76, 0.10);
        --chx-shadow-sm: 0 8px 18px rgba(16, 50, 62, 0.06);
        --chx-shadow: 0 18px 40px rgba(16, 50, 62, 0.10);
        --chx-shadow-lg: 0 28px 54px rgba(16, 50, 62, 0.12);
    """)

    page.injectComponentsThemeScope(".demo-market", """
        --chx-font: 'Sora', system-ui, sans-serif;
        --chx-primary: #111827;
        --chx-primary-hover: #1f2937;
        --chx-primary-fg: #f9fafb;
        --chx-bg: #f7f6f2;
        --chx-surface: #fffef8;
        --chx-surface-2: #efe8d9;
        --chx-border: #dfd0b6;
        --chx-border-strong: #c7b08b;
        --chx-text-main: #1c1811;
        --chx-text-muted: #726554;
        --chx-accent: #d97706;
        --chx-error: #dc2626;
        --chx-success: #15803d;
        --chx-ring: rgba(17, 24, 39, 0.10);
        --chx-shadow-sm: 0 8px 18px rgba(64, 43, 14, 0.08);
        --chx-shadow: 0 18px 40px rgba(64, 43, 14, 0.12);
        --chx-shadow-lg: 0 28px 60px rgba(64, 43, 14, 0.16);
    """)

    page.injectComponentsThemeScope(".demo-escape", """
        --chx-font: 'Outfit', system-ui, sans-serif;
        --chx-primary: #14354a;
        --chx-primary-hover: #1d4c67;
        --chx-primary-fg: #f4fbff;
        --chx-bg: #eef8fc;
        --chx-surface: #ffffff;
        --chx-surface-2: #d8ecf5;
        --chx-border: #b9d8e6;
        --chx-border-strong: #8fbfd6;
        --chx-text-main: #173246;
        --chx-text-muted: #5b7485;
        --chx-accent: #0ea5e9;
        --chx-error: #ef4444;
        --chx-success: #059669;
        --chx-ring: rgba(20, 53, 74, 0.10);
        --chx-shadow-sm: 0 8px 18px rgba(23, 50, 70, 0.06);
        --chx-shadow: 0 18px 40px rgba(23, 50, 70, 0.10);
        --chx-shadow-lg: 0 28px 60px rgba(23, 50, 70, 0.14);
    """)
}

func GlobalStyles2(page : &mut HtmlPage) {
    #css {
        body {
            margin: 0;
            overflow-x: hidden;
        }
        * { box-sizing: border-box; }
        h1, h2, h3 { font-weight: 800; letter-spacing: -0.02em; }
        .container { margin: 0 auto; }
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

func DemoPage(page : &mut HtmlPage) {
    page.appendTitle("Demo - Chemical Components")
    page.defaultPrepare()
    page.defaultUniversalSetup()
    page.injectDefaultComponentsTheme()
    InjectDemoThemes(page)
    GlobalStyles(page)
    GlassHeader(page, "demo")

    #css {
        .demo-page { padding: 11rem 0 4rem; }
        .demo-hero { display: grid; grid-template-columns: 1.2fr 0.8fr; gap: 2rem; align-items: start; }
        .demo-hero-copy { display: grid; gap: 1.1rem; }
        .demo-hero-copy h1 { font-size: 4rem; margin: 0; letter-spacing: -0.04em; }
        .demo-hero-copy p { margin: 0; color: var(--chx-text-muted); font-size: 1.08rem; max-width: 720px; }
        .demo-metrics { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1rem; margin-top: 1rem; }
        .demo-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 1.5rem; margin-top: 3rem; }
        .demo-card { display: grid; gap: 1rem; padding: 1.2rem; border: 1px solid var(--chx-border); border-radius: 28px; background: var(--chx-surface); box-shadow: var(--chx-shadow-sm); }
        .demo-card-head { display: flex; justify-content: space-between; align-items: flex-start; gap: 1rem; }
        .demo-card-head h3 { margin: 0.4rem 0 0 0; font-size: 1.5rem; }
        .demo-card-head p { margin: 0.55rem 0 0 0; color: var(--chx-text-muted); }
        .demo-links { display: flex; gap: 0.8rem; flex-wrap: wrap; }
        .demo-link { display: inline-flex; align-items: center; justify-content: center; padding: 0.78rem 1.05rem; border-radius: 999px; text-decoration: none; font-weight: 700; border: 1px solid var(--chx-border); color: var(--chx-text-main); background: var(--chx-surface-2); }
        .demo-link.primary { background: var(--chx-primary); color: var(--chx-primary-fg); border-color: transparent; }
        .demo-preview { border-radius: 24px; overflow: hidden; border: 1px solid var(--chx-border); min-height: 310px; }
        .theme-shell { background: var(--chx-bg); color: var(--chx-text-main); font-family: {"var(--chx-font)"}; min-height: 100%; }
        .mini-shell { padding: 1rem; display: grid; gap: 0.9rem; min-height: 100%; }
        .mini-hero { display: grid; gap: 0.75rem; }
        .mini-hero h4 { margin: 0; font-size: 1.35rem; letter-spacing: -0.03em; }
        .mini-hero p { margin: 0; color: var(--chx-text-muted); font-size: 0.92rem; }
        .mini-row { display: flex; gap: 0.7rem; flex-wrap: wrap; }
        .mini-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 0.75rem; }
        .demo-note { margin-top: 3rem; }
    }

// TODO: support global classes in the top level media query
page.append_css_view("""
    @media (max-width: 960px) {
        .demo-hero { grid-template-columns: 1fr; }
        .demo-grid { grid-template-columns: 1fr; }
        .demo-metrics { grid-template-columns: 1fr; }
    }
""")

    #html {
        <div class="container demo-page">
            <div class="demo-hero">
                <div class="demo-hero-copy">
                    <ChipAccent>Demo</ChipAccent>
                    <h1>Component-built websites with scoped themes.</h1>
                    <p>The Demo section turns the library into full website surfaces. Each site uses the same shared components, but themes are scoped per wrapper so we can test visual range without cloning the component set.</p>
                    <div class="demo-metrics">
                        <StatCard><Caption>Sites</Caption><H2>4</H2><ChipSuccess>New</ChipSuccess></StatCard>
                        <StatCard><Caption>Theme scopes</Caption><H2>4</H2><ChipAccent>Scoped</ChipAccent></StatCard>
                        <StatCard><Caption>Purpose</Caption><H2>Real usage</H2><Chip>Gap finding</Chip></StatCard>
                    </div>
                </div>
                <Paper>
                    <Caption>How to use this page</Caption>
                    <List style="margin-top:0.9rem;">
                        <ListItem>Open a site to inspect how components behave in a full website shell.</ListItem>
                        <ListItem>Compare how the same primitives adapt under different theme scopes.</ListItem>
                        <ListItem>Use awkward or missing moments in these sites to decide what the library should gain next.</ListItem>
                    </List>
                </Paper>
            </div>

            <div class="demo-grid">
                <div class="demo-card">
                    <div class="demo-card-head">
                        <div><ChipAccent>Studio</ChipAccent><h3>Northstar Studio</h3><p>Editorial agency landing page with warmer contrast and service-heavy storytelling.</p></div>
                        <BadgeAccent>demo-studio.html</BadgeAccent>
                    </div>
                    <div class="demo-preview demo-aurora theme-shell">
                        <div class="mini-shell">
                            <AppBar><ChipAccent>Northstar</ChipAccent><ButtonSm>Book intro</ButtonSm></AppBar>
                            <div class="mini-hero"><H3>Ideas that survive launch week.</H3><Text>Brand systems, motion, and web direction for teams that need more edge.</Text></div>
                            <div class="mini-row"><ButtonPrimary>View work</ButtonPrimary><ButtonGhost>Pricing</ButtonGhost></div>
                            <div class="mini-grid"><StatCard><Caption>Launches</Caption><H3>12</H3></StatCard><StatCard><Caption>Retention</Caption><H3>91%</H3></StatCard></div>
                        </div>
                    </div>
                    <div class="demo-links"><a href="demo-studio.html" class="demo-link primary">Open site</a></div>
                </div>

                <div class="demo-card">
                    <div class="demo-card-head">
                        <div><ChipSuccess>Clinic</ChipSuccess><h3>Harbor Health</h3><p>Calmer healthcare layout with status surfaces, scheduling density, and operational tables.</p></div>
                        <BadgeSuccess>demo-clinic.html</BadgeSuccess>
                    </div>
                    <div class="demo-preview demo-serene theme-shell">
                        <div class="mini-shell">
                            <AppBar><H3>Harbor Health</H3><BadgeSuccess>Accepting today</BadgeSuccess></AppBar>
                            <AlertSuccess><div><AlertTitle>Care team online</AlertTitle><AlertBody>Telehealth and same-day visits are available this afternoon.</AlertBody></div></AlertSuccess>
                            <div class="mini-grid"><Card><CardBody><Caption>Wait time</Caption><H3>12 min</H3></CardBody></Card><Card><CardBody><Caption>Patients today</Caption><H3>48</H3></CardBody></Card></div>
                        </div>
                    </div>
                    <div class="demo-links"><a href="demo-clinic.html" class="demo-link primary">Open site</a></div>
                </div>

                <div class="demo-card">
                    <div class="demo-card-head">
                        <div><Chip>Commerce</Chip><h3>Field Goods</h3><p>Commerce homepage with a launch story, pricing emphasis, and card-based catalog rhythm.</p></div>
                        <Badge>demo-shop.html</Badge>
                    </div>
                    <div class="demo-preview demo-market theme-shell">
                        <div class="mini-shell">
                            <div class="mini-row"><ChipAccent>Roastery drop</ChipAccent><ChipSuccess>Ships today</ChipSuccess></div>
                            <div class="mini-hero"><H3>Coffee gear with less noise.</H3><Text>Field-tested brewers, grinders, and travel kits for slower mornings.</Text></div>
                            <div class="mini-grid"><Card><CardBody><Caption>Grinder</Caption><H3>$129</H3></CardBody></Card><Card><CardBody><Caption>Kettle</Caption><H3>$84</H3></CardBody></Card></div>
                        </div>
                    </div>
                    <div class="demo-links"><a href="demo-shop.html" class="demo-link primary">Open site</a></div>
                </div>

                <div class="demo-card">
                    <div class="demo-card-head">
                        <div><ChipAccent>Retreat</ChipAccent><h3>Blueway Escape</h3><p>Travel and retreat page with itinerary blocks, amenity surfaces, and booking CTA moments.</p></div>
                        <BadgeAccent>demo-retreat.html</BadgeAccent>
                    </div>
                    <div class="demo-preview demo-escape theme-shell">
                        <div class="mini-shell">
                            <div class="mini-hero"><H3>Sea air, slow days, clear heads.</H3><Text>A coastline retreat for small teams that need focus, rest, and one sharp strategy session.</Text></div>
                            <div class="mini-row"><BadgeAccent>Ocean cabins</BadgeAccent><BadgeSuccess>4 spots left</BadgeSuccess></div>
                            <Paper><Caption>Next departure</Caption><Text style="margin-top:0.4rem;">June 18 | 3 nights | Karachi to Kund Malir</Text></Paper>
                        </div>
                    </div>
                    <div class="demo-links"><a href="demo-retreat.html" class="demo-link primary">Open site</a></div>
                </div>
            </div>

            <div class="demo-note">
                <AlertAccent><div><AlertTitle>Why these demos matter</AlertTitle><AlertBody>They surface where the component library still needs stronger layout primitives, richer navigation patterns, media-heavy blocks, or more nuanced data views.</AlertBody></div></AlertAccent>
            </div>
        </div>
    }

    SocialFooter(page)
    SetupThemeScript(page)
}

func DemoStudioPage(page : &mut HtmlPage) {
    page.appendTitle("Northstar Studio Demo - Chemical")
    page.defaultPrepare()
    page.defaultUniversalSetup()
    page.injectDefaultComponentsTheme()
    InjectDemoThemes(page)
    GlobalStyles2(page)
    GlassHeader(page, "demo")

    #css {
        .site-page { margin-left : 0; margin-right : 0; width : 100%; }
        .site-shell { padding-top : 64px; background: radial-gradient(circle at top right, rgba(255, 122, 89, 0.12), transparent 22%), var(--chx-bg); color: var(--chx-text-main); font-family: {"var(--chx-font)"}; border: 1px solid var(--chx-border); overflow: hidden; box-shadow: var(--chx-shadow-lg); }
        .site-inner { padding: 2rem; display: grid; gap: 2rem; }
        .hero-grid { display: grid; grid-template-columns: 1.15fr 0.85fr; gap: 1.4rem; align-items: center; }
        .hero-copy { display: grid; gap: 1rem; }
        .hero-copy h1 { margin: 0; font-size: 4.3rem; line-height: 0.96; letter-spacing: -0.05em; }
        .hero-copy p { margin: 0; color: var(--chx-text-muted); font-size: 1.08rem; max-width: 620px; }
        .hero-stack { display: flex; gap: 0.8rem; flex-wrap: wrap; }
        .hero-art { min-height: 420px; border-radius: 28px; background: radial-gradient(circle at top left, rgba(255, 122, 89, 0.28), transparent 45%), linear-gradient(135deg, rgba(37, 22, 70, 0.98), rgba(255, 122, 89, 0.84)); padding: 1.1rem; display: grid; align-content: space-between; color: #fff7ed; }
        .hero-art-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 0.85rem; }
        .hero-art-card { padding: 1rem; border-radius: 18px; background: rgba(255, 247, 237, 0.12); border: 1px solid rgba(255, 247, 237, 0.16); }
        .section-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1rem; }
        .section-title { display: flex; justify-content: space-between; align-items: center; gap: 1rem; }
        .section-title h2 { margin: 0; font-size: 2rem; }
        .project-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem; }
        .project-card { min-height: 220px; display: grid; align-content: end; border-radius: 24px; padding: 1.2rem; color: #fff; background: linear-gradient(180deg, transparent, rgba(0,0,0,0.55)), linear-gradient(135deg, #6d28d9, #fb7185); }
        .project-card.alt { background: linear-gradient(180deg, transparent, rgba(0,0,0,0.45)), linear-gradient(135deg, #fb7185, #f59e0b); }
        .quote-strip { display: grid; grid-template-columns: 0.95fr 1.05fr; gap: 1rem; align-items: stretch; }
        .quote-panel { padding: 1.4rem; border-radius: 24px; border: 1px solid rgba(37, 22, 70, 0.14); background: rgba(255, 247, 237, 0.72); }
        .quote-panel blockquote { margin: 0; font-size: 1.35rem; line-height: 1.2; font-weight: 700; }
        .back-link { color: var(--chx-text-muted); text-decoration: none; font-weight: 600; }
    }

page.append_css_view("""
    @media (max-width: 960px) {
        .hero-grid, .section-grid, .project-grid, .quote-strip { grid-template-columns: 1fr; }
        .hero-copy h1 { font-size: 3.2rem; }
    }
""")

    #html {
        <div class="container site-page">
            <div class="site-shell demo-aurora">
                <div class="site-inner">
                    <a href="demo.html" class="back-link">Back to Demo</a>
                    <AppBar><div class="hero-stack"><ChipAccent>Northstar Studio</ChipAccent><Chip>Brand systems</Chip></div><ButtonPrimary>Start a project</ButtonPrimary></AppBar>
                    <div class="hero-grid">
                        <div class="hero-copy">
                            <h1>Ideas that survive launch week.</h1>
                            <Lead>Northstar is a design studio for product teams that need a site, system, and story that still feels sharp after the sprint ends.</Lead>
                            <div class="hero-stack"><ButtonPrimary>See recent work</ButtonPrimary><ButtonGhost>Pricing</ButtonGhost><ButtonOutline>Brand audit</ButtonOutline></div>
                            <div class="section-grid">
                                <StatCard><Caption>Rebrands</Caption><H3>26</H3><ChipSuccess>+8 this year</ChipSuccess></StatCard>
                                <StatCard><Caption>Avg. rollout</Caption><H3>5 wks</H3><ChipAccent>Fast ship</ChipAccent></StatCard>
                                <StatCard><Caption>Retention</Caption><H3>91%</H3><Chip>Repeat clients</Chip></StatCard>
                            </div>
                        </div>
                        <div class="hero-art">
                            <div class="hero-art-grid"><div class="hero-art-card"><Caption>Identity systems</Caption><H3>Motion-ready</H3></div><div class="hero-art-card"><Caption>Launch sites</Caption><H3>Conversion-led</H3></div></div>
                            <div><Caption>Selected clients</Caption><div class="hero-stack" style="margin-top:0.8rem;"><BadgeAccent>Orbit</BadgeAccent><BadgeSuccess>Relay</BadgeSuccess><Badge>Current</Badge></div></div>
                        </div>
                    </div>
                    <div class="section-title"><h2>What we build</h2><Text>Lean systems that give product, design, and marketing the same visual language.</Text></div>
                    <div class="section-grid">
                        <Card><CardBody><H3>Brand direction</H3><Text>Positioning, language, and identity frameworks for new launches and resets.</Text></CardBody><CardFooter><ChipAccent>Strategy</ChipAccent></CardFooter></Card>
                        <Card><CardBody><H3>Launch websites</H3><Text>High-velocity sites for waitlists, launches, and product storytelling.</Text></CardBody><CardFooter><ChipSuccess>Web</ChipSuccess></CardFooter></Card>
                        <Card><CardBody><H3>Motion systems</H3><Text>Interaction language and campaign motion that keeps the brand feeling alive.</Text></CardBody><CardFooter><Chip>Motion</Chip></CardFooter></Card>
                    </div>
                    <div class="section-title"><h2>Recent work</h2><ButtonGhost>All projects</ButtonGhost></div>
                    <div class="project-grid"><div class="project-card"><Caption>Orbit</Caption><H3>Launch identity for an infra team</H3></div><div class="project-card alt"><Caption>Relay</Caption><H3>Editorial landing page for a product narrative shift</H3></div></div>
                    <div class="quote-strip">
                        <div class="quote-panel"><Caption>Client note</Caption><blockquote>"Northstar gave us a story the whole product team could actually use."</blockquote></div>
                        <Paper><Caption>Engagement rhythm</Caption><List style="margin-top:0.8rem;"><ListItem>Week 1: strategy and audience reset</ListItem><ListItem>Week 2: voice, visuals, launch system</ListItem><ListItem>Week 3+: rollout support across site and product</ListItem></List></Paper>
                    </div>
                    <DemoSiteFooter variant="demo-aurora" eyebrow="Editorial studio" title="Need a sharper launch surface?" summary="Northstar closes with a studio-style footer instead of the generic product demo footer so the page reads like a real agency site." ctaPrimary="Book an intro" ctaSecondary="Request pricing" note="This footer intentionally keeps the same primitives but changes the tone, copy, and information architecture for a studio client flow." />
                </div>
            </div>
        </div>
    }
    SetupThemeScript(page)
}

func DemoClinicPage(page : &mut HtmlPage) {
    page.appendTitle("Harbor Health Demo - Chemical")
    page.defaultPrepare()
    page.defaultUniversalSetup()
    page.injectDefaultComponentsTheme()
    InjectDemoThemes(page)
    GlobalStyles2(page)
    GlassHeader(page, "demo")

    #css {
        .site-page { margin-left : 0; margin-right : 0; width : 100%; }
        .site-shell { padding-top : 64px; background: linear-gradient(180deg, rgba(20, 184, 166, 0.08), transparent 22%), var(--chx-bg); color: var(--chx-text-main); font-family: {"var(--chx-font)"}; border: 1px solid var(--chx-border); overflow: hidden; box-shadow: var(--chx-shadow-lg); }
        .site-inner { padding: 2rem; display: grid; gap: 1.4rem; }
        .hero-grid { display: grid; grid-template-columns: 1fr 360px; gap: 1rem; }
        .hero-copy h1 { margin: 0; font-size: 3.2rem; letter-spacing: -0.04em; }
        .hero-copy p { margin: 0.8rem 0 0 0; color: var(--chx-text-muted); max-width: 640px; }
        .stats-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1rem; }
        .content-grid { display: grid; grid-template-columns: 1.1fr 0.9fr; gap: 1rem; }
        .care-strip { display: grid; grid-template-columns: repeat(4, 1fr); gap: 0.85rem; }
        .care-pill { padding: 0.9rem 1rem; border-radius: 18px; border: 1px solid var(--chx-border); background: rgba(255, 255, 255, 0.62); }
        .back-link { color: var(--chx-text-muted); text-decoration: none; font-weight: 600; }
    }

page.append_css_view("""
    @media (max-width: 960px) {
        .hero-grid, .stats-grid, .content-grid, .care-strip { grid-template-columns: 1fr; }
    }
""")

    #html {
        <div class="container site-page">
            <div class="site-shell demo-serene">
                <div class="site-inner">
                    <a href="demo.html" class="back-link">Back to Demo</a>
                    <AppBar><div><Caption>Harbor Health</Caption><H3>Care on your schedule</H3></div><BadgeSuccess>Same-day available</BadgeSuccess></AppBar>
                    <div class="hero-grid">
                        <div class="hero-copy">
                            <h1>Neighborhood care without the waiting room chaos.</h1>
                            <p>Harbor Health combines local clinics, telehealth follow-ups, and fast scheduling for families who need clear next steps.</p>
                            <div style="display:flex;gap:0.8rem;flex-wrap:wrap;margin-top:1rem;"><ButtonPrimary>Book today</ButtonPrimary><ButtonOutline>See services</ButtonOutline></div>
                        </div>
                        <Paper><Caption>Today</Caption><List style="margin-top:0.8rem;"><ListItem>Walk-in primary care</ListItem><ListItem>Pediatrics until 6 PM</ListItem><ListItem>Telehealth refill checks</ListItem></List></Paper>
                    </div>
                    <AlertSuccess><div><AlertTitle>Care team online</AlertTitle><AlertBody>Average telehealth wait is 12 minutes and lab review slots are open for the evening.</AlertBody></div></AlertSuccess>
                    <div class="care-strip">
                        <div class="care-pill"><Caption>Primary care</Caption><Text>Walk-ins open until 5 PM</Text></div>
                        <div class="care-pill"><Caption>Pediatrics</Caption><Text>Same-day slots available</Text></div>
                        <div class="care-pill"><Caption>Labs</Caption><Text>Review window starts at 4 PM</Text></div>
                        <div class="care-pill"><Caption>Telehealth</Caption><Text>Average queue: 12 minutes</Text></div>
                    </div>
                    <div class="stats-grid">
                        <StatCard><Caption>Clinicians today</Caption><H2>8</H2><ChipSuccess>Staffed</ChipSuccess></StatCard>
                        <StatCard><Caption>Average wait</Caption><H2>12 min</H2><ChipAccent>Low</ChipAccent></StatCard>
                        <StatCard><Caption>Patient rating</Caption><H2>4.9</H2><Chip>Trusted</Chip></StatCard>
                    </div>
                    <div class="content-grid">
                        <Paper>
                            <Caption>Upcoming services</Caption>
                            <Table style="margin-top:0.75rem;"><thead><tr><TableHeadCell>Service</TableHeadCell><TableHeadCell>Window</TableHeadCell><TableHeadCell>Status</TableHeadCell></tr></thead><tbody><tr><TableCell>Same-day visit</TableCell><TableCell>10 AM - 5 PM</TableCell><TableCell>Open</TableCell></tr><tr><TableCell>Vaccines</TableCell><TableCell>1 PM - 7 PM</TableCell><TableCell>Open</TableCell></tr><tr><TableCell>Lab review</TableCell><TableCell>4 PM - 8 PM</TableCell><TableCell>Limited</TableCell></tr></tbody></Table>
                        </Paper>
                        <Drawer><H3>Care team</H3><Text>Speak with a clinician, care navigator, or pharmacist depending on what you need next.</Text><Menu><MenuItem href="#">Primary care</MenuItem><MenuItem href="#">Pediatrics</MenuItem><MenuItem href="#">Follow-up review</MenuItem></Menu></Drawer>
                    </div>
                    <DemoSiteFooter variant="demo-serene" eyebrow="Community clinic" title="Care that ends with clear next steps" summary="Harbor Health now finishes with a clinic-specific footer that feels operational and patient-facing instead of dropping back into the generic Chemical marketing footer." ctaPrimary="Book an appointment" ctaSecondary="Call front desk" note="The footer copy, CTA language, and supporting metadata are tuned for a healthcare service surface rather than a component-library landing page." />
                </div>
            </div>
        </div>
    }
    SetupThemeScript(page)
}

func DemoShopPage(page : &mut HtmlPage) {
    page.appendTitle("Field Goods Demo - Chemical")
    page.defaultPrepare()
    page.defaultUniversalSetup()
    page.injectDefaultComponentsTheme()
    InjectDemoThemes(page)
    GlobalStyles2(page)
    GlassHeader(page, "demo")

    #css {
        .site-page { margin-left : 0; margin-right : 0; width : 100%; }
        .site-shell { padding-top : 64px; background: radial-gradient(circle at top left, rgba(217, 119, 6, 0.12), transparent 24%), var(--chx-bg); color: var(--chx-text-main); font-family: {"var(--chx-font)"}; border: 1px solid var(--chx-border); overflow: hidden; box-shadow: var(--chx-shadow-lg); }
        .site-inner { padding: 2rem; display: grid; gap: 1.5rem; }
        .back-link { color: var(--chx-text-muted); text-decoration: none; font-weight: 600; }
        .hero-grid { display: grid; grid-template-columns: 1.1fr 0.9fr; gap: 1.2rem; align-items: center; }
        .hero-copy { display: grid; gap: 0.95rem; }
        .hero-copy h1 { margin: 0; font-size: 3.7rem; line-height: 0.96; letter-spacing: -0.05em; }
        .hero-copy p { margin: 0; color: var(--chx-text-muted); max-width: 620px; }
        .hero-stack { display: flex; gap: 0.75rem; flex-wrap: wrap; }
        .hero-panel { min-height: 360px; border-radius: 28px; padding: 1.2rem; background: linear-gradient(160deg, rgba(217, 119, 6, 0.15), rgba(17, 24, 39, 0.08)); display: grid; align-content: space-between; border: 1px solid var(--chx-border); }
        .hero-panel-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 0.75rem; }
        .catalog-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1rem; }
        .product-art { min-height: 180px; border-radius: 22px; border: 1px solid var(--chx-border); background: linear-gradient(180deg, rgba(255,255,255,0.35), transparent), linear-gradient(135deg, #f7ead7, #ddc7a0); }
        .section-title { display: flex; justify-content: space-between; align-items: center; gap: 1rem; }
        .section-title h2 { margin: 0; font-size: 2rem; }
        .story-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; }
        .shelf-strip { display: grid; grid-template-columns: repeat(4, 1fr); gap: 0.85rem; }
        .shelf-card { min-height: 140px; padding: 1rem; border-radius: 20px; border: 1px solid var(--chx-border); background: linear-gradient(180deg, rgba(255,255,255,0.58), rgba(239,232,217,0.92)); display: grid; align-content: end; }
    }

page.append_css_view("""
    @media (max-width: 960px) {
        .hero-grid, .catalog-grid, .story-grid, .shelf-strip { grid-template-columns: 1fr; }
        .hero-copy h1 { font-size: 3rem; }
    }
""")

    #html {
        <div class="container site-page">
            <div class="site-shell demo-market">
                <div class="site-inner">
                    <a href="demo.html" class="back-link">Back to Demo</a>
                    <AppBar><div class="hero-stack"><ChipAccent>Field Goods</ChipAccent><Chip>Outdoor coffee</Chip></div><ButtonPrimary>Shop kits</ButtonPrimary></AppBar>
                    <div class="hero-grid">
                        <div class="hero-copy">
                            <h1>Coffee gear with less noise.</h1>
                            <Lead>Field Goods sells compact brewers, grinders, and carry kits for people who want better mornings without turning the counter into a lab.</Lead>
                            <div class="hero-stack"><ButtonPrimary>Shop the drop</ButtonPrimary><ButtonGhost>Starter bundle</ButtonGhost><ButtonOutline>Wholesale</ButtonOutline></div>
                            <div class="hero-stack"><BadgeAccent>Roastery collab</BadgeAccent><BadgeSuccess>Ships today</BadgeSuccess><Badge>2-year warranty</Badge></div>
                        </div>
                        <div class="hero-panel">
                            <div class="hero-stack"><ChipAccent>Weekend kit</ChipAccent><ChipSuccess>Best seller</ChipSuccess></div>
                            <div class="hero-panel-grid">
                                <StatCard><Caption>Starter bundle</Caption><H3>$149</H3></StatCard>
                                <StatCard><Caption>Subscribers</Caption><H3>1.9k</H3></StatCard>
                            </div>
                            <AlertAccent><div><AlertTitle>New roast launch</AlertTitle><AlertBody>Orders placed before 4 PM leave the roastery today.</AlertBody></div></AlertAccent>
                        </div>
                    </div>

                    <div class="section-title"><h2>Featured gear</h2><Text>Compact product cards, quick purchase actions, and catalog surfaces.</Text></div>
                    <div class="shelf-strip">
                        <div class="shelf-card"><Caption>Roast notes</Caption><H3>Berry / cacao</H3></div>
                        <div class="shelf-card"><Caption>Material</Caption><H3>Steel burrs</H3></div>
                        <div class="shelf-card"><Caption>Field use</Caption><H3>Pack-friendly</H3></div>
                        <div class="shelf-card"><Caption>Drop window</Caption><H3>Ends Friday</H3></div>
                    </div>
                    <div class="catalog-grid">
                        <Card style="display:grid;gap:0.9rem;">
                            <div class="product-art"></div>
                            <CardBody><Caption>Travel grinder</Caption><H3>Fold Mill</H3><Text>Steel burr grinder tuned for campsite or carry-on use.</Text></CardBody>
                            <CardFooter><Chip>$129</Chip><ButtonSm>Add to cart</ButtonSm></CardFooter>
                        </Card>
                        <Card style="display:grid;gap:0.9rem;">
                            <div class="product-art"></div>
                            <CardBody><Caption>Pour-over kit</Caption><H3>Drift Set</H3><Text>Brewer, filters, and kettle-sized workflow in one case.</Text></CardBody>
                            <CardFooter><Chip>$84</Chip><ButtonSm>Add to cart</ButtonSm></CardFooter>
                        </Card>
                        <Card style="display:grid;gap:0.9rem;">
                            <div class="product-art"></div>
                            <CardBody><Caption>Weekend bag</Caption><H3>Roam Pack</H3><Text>Padded utility bag for brewers, beans, and cups.</Text></CardBody>
                            <CardFooter><Chip>$96</Chip><ButtonSm>Add to cart</ButtonSm></CardFooter>
                        </Card>
                    </div>

                    <div class="story-grid">
                        <Paper>
                            <Caption>What customers care about</Caption>
                            <AccordionItem open={true} title="What makes the kit different?" subtitle="A denser retail story with product-centered content.">The demo uses shared cards, buttons, chips, and alerts, but the market theme shifts the tone toward product merchandising and warmer physical materials.</AccordionItem>
                            <AccordionItem title="What component gaps does this surface expose?" subtitle="Commerce flows are where missing components appear fast.">This page suggests future needs like richer media blocks, rating displays, stepped checkout forms, and denser inventory states.</AccordionItem>
                        </Paper>
                        <Paper>
                            <Caption>Subscription drop</Caption>
                            <Text style="margin-top:0.75rem;">A monthly roast pair, brew notes, and one piece of carry gear for people building a smaller setup.</Text>
                            <div class="hero-stack" style="margin-top:1rem;"><ChipAccent>2 bags</ChipAccent><Chip>Field notes</Chip><ChipSuccess>Free shipping</ChipSuccess></div>
                            <Card style="margin-top:1rem;"><CardBody><Caption>Member price</Caption><H2>$36</H2><Text>Pause or skip any month after the first shipment.</Text></CardBody><CardFooter><ButtonPrimary>Join the drop</ButtonPrimary></CardFooter></Card>
                        </Paper>
                    </div>
                    <DemoSiteFooter variant="demo-market" eyebrow="Commerce launch" title="The catalog keeps selling after the hero" summary="Field Goods now lands on a merchandising-style footer with commerce language and next-step actions that fit the store rather than the demo site." ctaPrimary="Browse all gear" ctaSecondary="Join the roast drop" note="This makes the shop demo feel less like a themed landing page and more like a compact retail homepage built out of shared primitives." />
                </div>
            </div>
        </div>
    }
    SetupThemeScript(page)
}

func DemoRetreatPage(page : &mut HtmlPage) {
    page.appendTitle("Blueway Escape Demo - Chemical")
    page.defaultPrepare()
    page.defaultUniversalSetup()
    page.injectDefaultComponentsTheme()
    InjectDemoThemes(page)
    GlobalStyles2(page)
    GlassHeader(page, "demo")

    #css {
        .site-page { margin-left : 0; margin-right : 0; width : 100%; }
        .site-shell { padding-top : 64px; background: linear-gradient(180deg, rgba(14, 165, 233, 0.10), transparent 24%), var(--chx-bg); color: var(--chx-text-main); font-family: {"var(--chx-font)"}; border: 1px solid var(--chx-border); overflow: hidden; box-shadow: var(--chx-shadow-lg); }
        .site-inner { padding: 2rem; display: grid; gap: 1.5rem; }
        .back-link { color: var(--chx-text-muted); text-decoration: none; font-weight: 600; }
        .hero-grid { display: grid; grid-template-columns: 1.05fr 0.95fr; gap: 1.2rem; align-items: stretch; }
        .hero-copy { display: grid; gap: 1rem; }
        .hero-copy h1 { margin: 0; font-size: 3.8rem; line-height: 0.96; letter-spacing: -0.05em; }
        .hero-copy p { margin: 0; color: var(--chx-text-muted); max-width: 640px; }
        .hero-stack { display: flex; gap: 0.75rem; flex-wrap: wrap; }
        .hero-scene { min-height: 390px; border-radius: 30px; border: 1px solid var(--chx-border); background: linear-gradient(180deg, rgba(14, 165, 233, 0.14), transparent 48%), linear-gradient(160deg, #cbeaf7, #8dbfd3); padding: 1.2rem; display: grid; align-content: space-between; }
        .stats-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1rem; }
        .plan-grid { display: grid; grid-template-columns: 1.05fr 0.95fr; gap: 1rem; }
        .itinerary-list { display: grid; gap: 0.8rem; }
        .itinerary-item { padding: 0.95rem 1rem; border-radius: 18px; border: 1px solid var(--chx-border); background: rgba(255,255,255,0.5); }
        .amenity-strip { display: grid; grid-template-columns: repeat(4, 1fr); gap: 0.85rem; }
        .amenity-card { padding: 1rem; border-radius: 20px; border: 1px solid var(--chx-border); background: rgba(255,255,255,0.52); }
    }

page.append_css_view("""
    @media (max-width: 960px) {
        .hero-grid, .stats-grid, .plan-grid, .amenity-strip { grid-template-columns: 1fr; }
        .hero-copy h1 { font-size: 3rem; }
    }
""")

    #html {
        <div class="container site-page">
            <div class="site-shell demo-escape">
                <div class="site-inner">
                    <a href="demo.html" class="back-link">Back to Demo</a>
                    <AppBar><div class="hero-stack"><ChipAccent>Blueway Escape</ChipAccent><Chip>Small team retreats</Chip></div><ButtonPrimary>Reserve a cabin</ButtonPrimary></AppBar>
                    <div class="hero-grid">
                        <div class="hero-copy">
                            <h1>Sea air, slow days, clear heads.</h1>
                            <Lead>Blueway is a retreat concept for small teams that need a soft reset, a better offsite structure, and a place that still feels considered instead of corporate.</Lead>
                            <div class="hero-stack"><ButtonPrimary>See dates</ButtonPrimary><ButtonGhost>View cabins</ButtonGhost><ButtonOutline>Custom itinerary</ButtonOutline></div>
                            <div class="hero-stack"><BadgeAccent>Ocean cabins</BadgeAccent><BadgeSuccess>4 spots left</BadgeSuccess><Badge>Strategy included</Badge></div>
                        </div>
                        <div class="hero-scene">
                            <div class="hero-stack"><ChipAccent>June departure</ChipAccent><ChipSuccess>3 nights</ChipSuccess></div>
                            <Paper><Caption>Next departure</Caption><Text style="margin-top:0.45rem;">June 18 | 3 nights | Karachi to Kund Malir</Text></Paper>
                            <AlertSuccess><div><AlertTitle>Ideal for 6 to 10 people</AlertTitle><AlertBody>Private cabins, guided planning blocks, and enough unstructured time to make the trip useful.</AlertBody></div></AlertSuccess>
                        </div>
                    </div>

                    <div class="stats-grid">
                        <StatCard><Caption>Cabins</Caption><H2>8</H2><ChipSuccess>Seaside</ChipSuccess></StatCard>
                        <StatCard><Caption>Travel time</Caption><H2>4 hrs</H2><ChipAccent>Road trip</ChipAccent></StatCard>
                        <StatCard><Caption>Team size</Caption><H2>6-10</H2><Chip>Private group</Chip></StatCard>
                    </div>
                    <div class="amenity-strip">
                        <div class="amenity-card"><Caption>Morning</Caption><Text>Open water swim and quiet breakfast</Text></div>
                        <div class="amenity-card"><Caption>Work block</Caption><Text>Guided planning session with notes</Text></div>
                        <div class="amenity-card"><Caption>Afternoon</Caption><Text>Beach time or boat trip</Text></div>
                        <div class="amenity-card"><Caption>Evening</Caption><Text>Family-style dinner under open sky</Text></div>
                    </div>

                    <div class="plan-grid">
                        <Paper>
                            <div style="display:grid;gap:0.85rem;">
                                <div><Caption>Sample itinerary</Caption><H3 style="margin-top:0.35rem;">A retreat page needs schedule density without becoming enterprise UI.</H3></div>
                                <div class="itinerary-list">
                                    <div class="itinerary-item"><Caption>Day 1</Caption><Text>Arrival, shoreline dinner, and a short session to align the trip around one real question.</Text></div>
                                    <div class="itinerary-item"><Caption>Day 2</Caption><Text>Morning focus block, free afternoon, and a facilitated strategy review before sunset.</Text></div>
                                    <div class="itinerary-item"><Caption>Day 3</Caption><Text>Open morning, optional boat trip, then a concise closeout with next-step notes.</Text></div>
                                </div>
                            </div>
                        </Paper>
                        <EmptyState>
                            <H3>Planning-heavy components still missing</H3>
                            <Text>The retreat surface highlights likely next additions: timeline components, richer booking summaries, image galleries, and stronger itinerary layouts.</Text>
                            <ButtonPrimary>Request a date</ButtonPrimary>
                        </EmptyState>
                    </div>
                    <DemoSiteFooter variant="demo-escape" eyebrow="Coastal retreat" title="End on a booking moment, not a framework footer" summary="Blueway now closes like a hospitality page with trip-planning language and booking actions, which fits the site better than the shared Chemical footer." ctaPrimary="Reserve a cabin" ctaSecondary="Request itinerary" note="The retreat demo now has its own closing section so it reads like a travel product instead of a themed component showcase." />
                </div>
            </div>
        </div>
    }
    SetupThemeScript(page)
}
