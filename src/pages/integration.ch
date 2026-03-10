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

func IntegrationPage(page : &mut HtmlPage) {
    page.defaultPrepare()
    page.defaultPreactSetup()
    page.defaultReactSetup()
    page.defaultSolidSetup()
    page.appendTitle("Integration - Chemical")
    GlobalStyles(page)
    GlassHeader(page, "integration")

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