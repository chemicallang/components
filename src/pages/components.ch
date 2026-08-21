// Components Documentation Page — shadcn-style
// One page per component with named subsections (Basic, Sizes, Disabled, etc.)
// Each component section has: title, description, subsections with demos, props table.

func ComponentsDocPage(page : &mut HtmlPage) {
    page.appendTitle("Components - Chemical")
    page.defaultPrepare()
    page.defaultUniversalSetup()
    page.injectDefaultComponentsTheme()
    GlobalStyles(page)
    GlassHeader(page, "components")

    #css {
        body { background: hsl(var(--background)); color: hsl(var(--foreground)); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif; }
        html.dark { background: hsl(var(--background)); color: hsl(var(--foreground)); }
        .docs-layout { display: flex; min-height: calc(100vh - 64px); padding-top: 64px; }
        .docs-sidebar {
            width: 240px; flex-shrink: 0;
            border-right: 1px solid hsl(var(--border));
            padding: 2rem 0; overflow-y: auto;
            position: fixed; top: 64px; left: 0; bottom: 0;
            background: transparent;
        }
        .docs-sidebar::-webkit-scrollbar { width: 0; }
        .docs-sidebar-group { padding: 0 0; margin-bottom: 0.5rem; }
        .docs-sidebar-group-title {
            padding: 0.5rem 1.5rem; font-size: 0.8rem; font-weight: 600;
            color: hsl(var(--foreground)); letter-spacing: 0;
        }
        .docs-sidebar-item {
            display: block; padding: 0.4rem 1.5rem 0.4rem 2rem;
            color: hsl(var(--muted-foreground)); text-decoration: none;
            font-size: 0.875rem; font-weight: 400; line-height: 1.5;
            transition: color 0.15s;
        }
        .docs-sidebar-item:hover { color: hsl(var(--foreground)); }
        .docs-sidebar-item.active { color: hsl(var(--foreground)); font-weight: 500; }
        .docs-main { margin-left: 240px; flex: 1; padding: 2.5rem 3rem 6rem; max-width: 800px; color: hsl(var(--foreground)); background: transparent; }
        .docs-section { display: none; }
        .docs-section.active { display: block; }
        .docs-component-title { font-size: 2rem; font-weight: 700; letter-spacing: -0.025em; margin: 0 0 0.5rem; line-height: 1.2; }
        .docs-component-desc { color: hsl(var(--muted-foreground)); font-size: 1.05rem; line-height: 1.6; margin: 0 0 2.5rem; max-width: 600px; }
        .docs-props-table { width: 100%; border-collapse: collapse; margin: 1.5rem 0; border: 1px solid hsl(var(--border)); border-radius: var(--radius); overflow: hidden; font-size: 0.875rem; }
        .docs-props-table th { text-align: left; padding: 0.75rem 1rem; background: hsl(var(--muted)); color: hsl(var(--foreground)); font-size: 0.8125rem; font-weight: 500; border-bottom: 1px solid hsl(var(--border)); }
        .docs-props-table td { padding: 0.75rem 1rem; color: hsl(var(--foreground)); border-bottom: 1px solid hsl(var(--border)); vertical-align: top; }
        .docs-props-table tr:last-child td { border-bottom: none; }
        .docs-prop-name { font-weight: 500; color: hsl(var(--foreground)); font-family: ui-monospace, 'SFMono-Regular', 'SF Mono', Menlo, Consolas, monospace; font-size: 0.8125rem; }
        .docs-prop-type { color: hsl(var(--muted-foreground)); font-family: ui-monospace, 'SFMono-Regular', monospace; font-size: 0.8125rem; }
        .docs-prop-default { color: hsl(var(--muted-foreground)); font-family: ui-monospace, 'SFMono-Regular', monospace; font-size: 0.8125rem; }
        .docs-prop-desc { color: hsl(var(--muted-foreground)); }
        .docs-subsection { margin-top: 3rem; }
        .docs-subsection h2 { font-size: 1.25rem; font-weight: 600; margin: 0 0 0.5rem; letter-spacing: -0.01em; scroll-margin-top: 80px; }
        .docs-subsection-desc { color: hsl(var(--muted-foreground)); font-size: 0.9375rem; margin: 0 0 1.25rem; max-width: 600px; line-height: 1.6; }
        .docs-demo-box { border: 1px solid hsl(var(--border)); border-radius: var(--radius); padding: 1.5rem; background: transparent; }
        .docs-demo-row { display: flex; flex-wrap: wrap; gap: 0.75rem; align-items: center; }
        .docs-demo-grid { display: grid; gap: 0.75rem; }
        .docs-demo-label { font-size: 0.75rem; font-weight: 500; text-transform: uppercase; letter-spacing: 0.05em; color: hsl(var(--muted-foreground)); margin-bottom: 1rem; }
        .docs-divider { height: 1px; background: hsl(var(--border)); margin: 2.5rem 0; border: none; }
        .docs-hint { padding: 0.75rem 1rem; border-radius: var(--radius); background: hsl(var(--muted)); color: hsl(var(--muted-foreground)); font-size: 0.875rem; margin-top: 1rem; line-height: 1.5; }
        .docs-code-block { background: hsl(var(--muted)); border: 1px solid hsl(var(--border)); border-radius: var(--radius); padding: 1rem 1.25rem; margin-top: 0.75rem; font-family: ui-monospace, 'SFMono-Regular', monospace; font-size: 0.8125rem; color: hsl(var(--foreground)); overflow-x: auto; white-space: pre; line-height: 1.6; }
        .header { background: hsl(var(--background)); border-bottom: 1px solid hsl(var(--border)); backdrop-filter: none; }
        .nav-links a { color: hsl(var(--muted-foreground)); font-size: 0.875rem; }
        .nav-links a:hover { color: hsl(var(--foreground)); }
        .nav-links a.active { color: hsl(var(--foreground)); }
        .nav-links a.active::after { background: hsl(var(--foreground)); }
        .logo { color: hsl(var(--foreground)); }
        /* NativeSelect option dark mode fix */
        select { color-scheme: dark; }
        select option { background: hsl(var(--background)); color: hsl(var(--foreground)); padding: 0.5rem; }
        select option:disabled { color: hsl(var(--muted-foreground)); opacity: 0.6; }
    }

    #html {
        {"""<div class="container" style="max-width:100%;padding:0;"><div class="docs-layout">"""}
            <nav class="docs-sidebar">
                <div class="docs-sidebar-group">
                    <div class="docs-sidebar-group-title">Typography</div>
                    <a href="#headings" class="docs-sidebar-item active" data-comp="headings">Headings</a>
                    <a href="#text" class="docs-sidebar-item" data-comp="text">Text</a>
                    <a href="#lead" class="docs-sidebar-item" data-comp="lead">Lead</a>
                    <a href="#caption" class="docs-sidebar-item" data-comp="caption">Caption</a>
                    <a href="#codetext" class="docs-sidebar-item" data-comp="codetext">CodeText</a>
                    <a href="#link" class="docs-sidebar-item" data-comp="link">Link</a>
                    <a href="#blockquote" class="docs-sidebar-item" data-comp="blockquote">Blockquote</a>
                </div>
                <div class="docs-sidebar-group">
                    <div class="docs-sidebar-group-title">Components</div>
                    <a href="#button" class="docs-sidebar-item" data-comp="button">Button</a>
                    <a href="#input" class="docs-sidebar-item" data-comp="input">Input</a>
                    <a href="#textarea" class="docs-sidebar-item" data-comp="textarea">Textarea</a>
                    <a href="#select" class="docs-sidebar-item" data-comp="select">Select</a>
                    <a href="#nativeselect" class="docs-sidebar-item" data-comp="nativeselect">Native Select</a>
                    <a href="#field" class="docs-sidebar-item" data-comp="field">Field</a>
                    <a href="#checkbox" class="docs-sidebar-item" data-comp="checkbox">Checkbox</a>
                    <a href="#radio" class="docs-sidebar-item" data-comp="radio">Radio</a>
                    <a href="#switch" class="docs-sidebar-item" data-comp="switch">Switch</a>
                    <a href="#togglegroup" class="docs-sidebar-item" data-comp="togglegroup">Toggle Group</a>
                    <a href="#radiogroup" class="docs-sidebar-item" data-comp="radiogroup">Radio Group</a>
                    <a href="#slider" class="docs-sidebar-item" data-comp="slider">Slider</a>
                    <a href="#dialog" class="docs-sidebar-item" data-comp="dialog">Dialog</a>
                    <a href="#sheet" class="docs-sidebar-item" data-comp="sheet">Sheet</a>
                    <a href="#alert" class="docs-sidebar-item" data-comp="alert">Alert</a>
                    <a href="#badge" class="docs-sidebar-item" data-comp="badge">Badge</a>
                    <a href="#avatar" class="docs-sidebar-item" data-comp="avatar">Avatar</a>
                    <a href="#card" class="docs-sidebar-item" data-comp="card">Card</a>
                    <a href="#accordion" class="docs-sidebar-item" data-comp="accordion">Accordion</a>
                    <a href="#tabs" class="docs-sidebar-item" data-comp="tabs">Tabs</a>
                    <a href="#collapsible" class="docs-sidebar-item" data-comp="collapsible">Collapsible</a>
                    <a href="#progress" class="docs-sidebar-item" data-comp="progress">Progress</a>
                    <a href="#pagination" class="docs-sidebar-item" data-comp="pagination">Pagination</a>
                    <a href="#toast" class="docs-sidebar-item" data-comp="toast">Toast</a>
                    <a href="#tooltip" class="docs-sidebar-item" data-comp="tooltip">Tooltip</a>
                    <a href="#table" class="docs-sidebar-item" data-comp="table">Table</a>
                    <a href="#list" class="docs-sidebar-item" data-comp="list">List</a>
                    <a href="#separator" class="docs-sidebar-item" data-comp="separator">Separator</a>
                    <a href="#skeleton" class="docs-sidebar-item" data-comp="skeleton">Skeleton</a>
                    <a href="#spinner" class="docs-sidebar-item" data-comp="spinner">Spinner</a>
                    <a href="#kbd" class="docs-sidebar-item" data-comp="kbd">Kbd</a>
                    <a href="#icon" class="docs-sidebar-item" data-comp="icon">Icon</a>
                    <a href="#divider" class="docs-sidebar-item" data-comp="divider">Divider</a>
                    <a href="#breadcrumbs" class="docs-sidebar-item" data-comp="breadcrumbs">Breadcrumb</a>
                    <a href="#container" class="docs-sidebar-item" data-comp="container">Container</a>
                    <a href="#stack" class="docs-sidebar-item" data-comp="stack">Stack</a>
                    <a href="#grid" class="docs-sidebar-item" data-comp="grid">Grid</a>
                    <a href="#paper" class="docs-sidebar-item" data-comp="paper">Paper</a>
                    <a href="#appbar" class="docs-sidebar-item" data-comp="appbar">AppBar</a>
                    <a href="#drawer" class="docs-sidebar-item" data-comp="drawer">Drawer</a>
                    <a href="#popover" class="docs-sidebar-item" data-comp="popover">Popover</a>
                    <a href="#snackbar" class="docs-sidebar-item" data-comp="snackbar">Snackbar</a>
                    <a href="#bottombar" class="docs-sidebar-item" data-comp="bottombar">BottomBar</a>
                    <a href="#empty" class="docs-sidebar-item" data-comp="empty">Empty State</a>
                    <a href="#statcard" class="docs-sidebar-item" data-comp="statcard">Stat Card</a>
                </div>
            </nav>
            {"""<main class="docs-main">"""}
    }

    renderHeading(page)
    renderText(page)
    renderLead(page)
    renderCaption(page)
    renderCodeText(page)
    renderLinkComp(page)
    renderBlockquoteComp(page)
    renderButtonComp(page)
    renderInputComp(page)
    renderTextareaComp(page)
    renderSelectComp(page)
    renderNativeSelectComp(page)
    renderFieldComp(page)
    renderCheckboxComp(page)
    renderRadioComp(page)
    renderSwitchComp(page)
    renderToggleGroupComp(page)
    renderRadioGroupComp(page)
    renderSliderComp(page)
    renderDialogComp(page)
    renderSheetComp(page)
    renderAlertComp(page)
    renderBadgeComp(page)
    renderAvatarComp(page)
    renderCardComp(page)
    renderAccordionComp(page)
    renderTabsComp(page)
    renderCollapsibleComp(page)
    renderProgressComp(page)
    renderPaginationComp(page)
    renderToastComp(page)
    renderTooltipComp(page)
    renderTableComp(page)
    renderListComp(page)
    renderSeparatorComp(page)
    renderSkeletonComp(page)
    renderSpinnerComp(page)
    renderKbdComp(page)
    renderIconComp(page)
    renderDividerComp(page)
    renderBreadcrumbComp(page)
    renderContainerComp(page)
    renderStackComp(page)
    renderGridComp(page)
    renderPaperComp(page)
    renderAppBarComp(page)
    renderDrawerComp(page)
    renderPopoverComp(page)
    renderSnackbarComp(page)
    renderBottomBarComp(page)
    renderEmptyComp(page)
    renderStatCardComp(page)

    SetupComponentNav(page)
    SocialFooter(page)

    #html {
        {"""</main></div></div>"""}
    }
}

func renderHeading(page : &mut HtmlPage) {
    #html {
        <div class="docs-section active" id="docs-headings" data-comp="headings">
            <h1 class="docs-component-title">Headings</h1>
            <p class="docs-component-desc">Heading levels H1 through H6 for document structure.</p>
            <div class="docs-subsection">
                <h2>Usage</h2>
                <p class="docs-subsection-desc">Import and use heading components directly.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-grid">
                        <H1>Heading 1</H1>
                        <H2>Heading 2</H2>
                        <H3>Heading 3</H3>
                        <H4>Heading 4</H4>
                        <H5>Heading 5</H5>
                        <H6>Heading 6</H6>
                    </div>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Dynamic Level</h2>
                <p class="docs-subsection-desc">Use Heading with a <CodeText>level</CodeText> prop to render the correct tag dynamically.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-grid">
                        <Heading level={1}>Dynamic Level 1</Heading>
                        <Heading level={3}>Dynamic Level 3</Heading>
                        <Heading level={6}>Dynamic Level 6</Heading>
                    </div>
                </div>
            </div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">level</td><td class="docs-prop-type">int</td><td class="docs-prop-default">1</td><td class="docs-prop-desc">Heading level (1-6)</td></tr>
                        <tr><td class="docs-prop-name">className</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Additional CSS classes</td></tr>
                        <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">any</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Heading content</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderText(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-text" data-comp="text">
            <h1 class="docs-component-title">Text</h1>
            <p class="docs-component-desc">Paragraph text with optional muted style and polymorphic rendering.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box">
                    <Text>The quick brown fox jumps over the lazy dog.</Text>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Muted</h2>
                <p class="docs-subsection-desc">Use <CodeText>muted</CodeText> prop for secondary text.</p>
                <div class="docs-demo-box">
                    <Text muted>This is muted secondary text.</Text>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>As Element</h2>
                <p class="docs-subsection-desc">Render as <CodeText>p</CodeText>, <CodeText>span</CodeText>, or <CodeText>div</CodeText> using the <CodeText>as</CodeText> prop.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-row" style="gap:1.5rem;">
                        <Text>Default paragraph</Text>
                        <Text as="span">Rendered as span</Text>
                        <Text as="div">Rendered as div</Text>
                    </div>
                </div>
            </div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">as</td><td class="docs-prop-type">string</td><td class="docs-prop-default">p</td><td class="docs-prop-desc">HTML tag (p, span, div)</td></tr>
                        <tr><td class="docs-prop-name">muted</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Muted secondary style</td></tr>
                        <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">any</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Content</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderLead(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-lead" data-comp="lead">
            <h1 class="docs-component-title">Lead</h1>
            <p class="docs-component-desc">Larger paragraph text for introductions and subtitles.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box"><Lead>Build beautiful, accessible web applications with Chemical components.</Lead></div>
            </div>
        </div>
    }
}

func renderCaption(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-caption" data-comp="caption">
            <h1 class="docs-component-title">Caption</h1>
            <p class="docs-component-desc">Small helper text for metadata and supporting copy.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box"><Caption>Last updated 2 minutes ago</Caption></div>
            </div>
        </div>
    }
}

func renderCodeText(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-codetext" data-comp="codetext">
            <h1 class="docs-component-title">CodeText</h1>
            <p class="docs-component-desc">Inline code for technical references.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box"><p>Run <CodeText>npm install</CodeText> to get started.</p></div>
            </div>
        </div>
    }
}

func renderLinkComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-link" data-comp="link">
            <h1 class="docs-component-title">Link</h1>
            <p class="docs-component-desc">Styled anchor link for navigation.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><Link href="#">Click here</Link></div></div>
            <div class="docs-subsection"><h2>External</h2><div class="docs-demo-box"><Link href="https://github.com" target="_blank">GitHub</Link></div></div>
        </div>
    }
}

func renderBlockquoteComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-blockquote" data-comp="blockquote">
            <h1 class="docs-component-title">Blockquote</h1>
            <p class="docs-component-desc">Styled block quotation with optional citation.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box">
                    <Blockquote cite="Ada Lovelace">The Analytical Engine weaves algebraic patterns just as the Jacquard loom weaves flowers and leaves.</Blockquote>
                </div>
            </div>
        </div>
    }
}

func renderButtonComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-button" data-comp="button">
            <h1 class="docs-component-title">Button</h1>
            <p class="docs-component-desc">Displays a button or a component that looks like a button.</p>

            <div class="docs-subsection">
                <h2>Basic</h2>
                <p class="docs-subsection-desc">Use the <CodeText>variant</CodeText> prop to change the button style.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <Button>Default</Button>
                        <Button variant="secondary">Secondary</Button>
                        <Button variant="destructive">Destructive</Button>
                        <Button variant="outline">Outline</Button>
                        <Button variant="ghost">Ghost</Button>
                        <Button variant="link">Link</Button>
                    </div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>Additional Variants</h2>
                <p class="docs-subsection-desc">Extended variants for success, warning, info, and accent tones.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <Button variant="success">Success</Button>
                        <Button variant="warning">Warning</Button>
                        <Button variant="info">Info</Button>
                        <Button variant="accent">Accent</Button>
                    </div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>Size</h2>
                <p class="docs-subsection-desc">Use the <CodeText>size</CodeText> prop to change the button size.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <Button size="sm">Small</Button>
                        <Button>Default</Button>
                        <Button size="lg">Large</Button>
                        <Button size="icon">+</Button>
                    </div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>Disabled</h2>
                <p class="docs-subsection-desc">Use the <CodeText>disabled</CodeText> prop to disable the button.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <Button disabled>Disabled</Button>
                        <Button variant="outline" disabled>Outline Disabled</Button>
                        <Button variant="ghost" disabled>Ghost Disabled</Button>
                    </div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>Loading</h2>
                <p class="docs-subsection-desc">Use the <CodeText>loading</CodeText> prop to show a loading state.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <Button loading>Loading</Button>
                    </div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>With Icon</h2>
                <p class="docs-subsection-desc">Combine with <CodeText>Icon</CodeText> or <CodeText>Fab</CodeText> for icon buttons.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <IconButton><Icon>+</Icon></IconButton>
                        <Fab><Icon>+</Icon> New</Fab>
                        <Fab disabled><Icon>?</Icon> Help</Fab>
                    </div>
                </div>
            </div>

            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">variant</td><td class="docs-prop-type">string</td><td class="docs-prop-default">default</td><td class="docs-prop-desc">default | secondary | destructive | outline | ghost | link | success | warning | info | accent</td></tr>
                        <tr><td class="docs-prop-name">size</td><td class="docs-prop-type">string</td><td class="docs-prop-default">default</td><td class="docs-prop-desc">sm | default | lg | icon</td></tr>
                        <tr><td class="docs-prop-name">disabled</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Disabled state</td></tr>
                        <tr><td class="docs-prop-name">loading</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Loading state</td></tr>
                        <tr><td class="docs-prop-name">type</td><td class="docs-prop-type">string</td><td class="docs-prop-default">button</td><td class="docs-prop-desc">button | submit | reset</td></tr>
                        <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                        <tr><td class="docs-prop-name">ariaLabel</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Accessible label</td></tr>
                        <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">any</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Button content</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderInputComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-input" data-comp="input">
            <h1 class="docs-component-title">Input</h1>
            <p class="docs-component-desc">Text input field with variant, size, and state support.</p>

            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box">
                    <div style="max-width:320px;"><Input placeholder="Enter text..." /></div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>Variant</h2>
                <p class="docs-subsection-desc">Use the <CodeText>variant</CodeText> prop to change the input style.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-grid" style="max-width:320px;">
                        <Input variant="default" placeholder="Default" />
                        <Input variant="filled" placeholder="Filled" />
                        <Input variant="ghost" placeholder="Ghost" />
                        <Input variant="error" placeholder="Error" />
                        <Input variant="success" placeholder="Success" />
                    </div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>Size</h2>
                <div class="docs-demo-box">
                    <div class="docs-demo-grid" style="max-width:320px;">
                        <Input size="sm" placeholder="Small" />
                        <Input placeholder="Default" />
                        <Input size="lg" placeholder="Large" />
                    </div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>Type</h2>
                <p class="docs-subsection-desc">Use the <CodeText>type</CodeText> prop for different input types.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-grid" style="max-width:320px;">
                        <Input type="text" placeholder="Text" />
                        <Input type="email" placeholder="Email" />
                        <Input type="number" placeholder="Number" />
                        <Input type="password" placeholder="Password" />
                        <Input type="search" placeholder="Search" />
                    </div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>Disabled</h2>
                <div class="docs-demo-box">
                    <div style="max-width:320px;"><Input disabled value="Disabled input" /></div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>With Label</h2>
                <p class="docs-subsection-desc">Wrap in <CodeText>Field</CodeText> for label, hint, and error.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-grid" style="max-width:320px;">
                        <Field>
                            <FieldLabel>Email</FieldLabel>
                            <Input placeholder="you@example.com" />
                            <FieldHint>We'll never share your email.</FieldHint>
                        </Field>
                        <Field>
                            <FieldLabel>Password</FieldLabel>
                            <Input variant="error" type="password" placeholder="Too short" />
                            <FieldError>Password must be at least 8 characters.</FieldError>
                        </Field>
                    </div>
                </div>
            </div>

            <div class="docs-subsection">
                <h2>Textarea</h2>
                <div class="docs-demo-box">
                    <TextArea placeholder="Write your message..." />
                </div>
            </div>

            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">variant</td><td class="docs-prop-type">string</td><td class="docs-prop-default">default</td><td class="docs-prop-desc">default | filled | ghost | error | success</td></tr>
                        <tr><td class="docs-prop-name">size</td><td class="docs-prop-type">string</td><td class="docs-prop-default">default</td><td class="docs-prop-desc">sm | default | lg</td></tr>
                        <tr><td class="docs-prop-name">type</td><td class="docs-prop-type">string</td><td class="docs-prop-default">text</td><td class="docs-prop-desc">text | email | number | password | search</td></tr>
                        <tr><td class="docs-prop-name">disabled</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Disabled state</td></tr>
                        <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Placeholder text</td></tr>
                        <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input value</td></tr>
                        <tr><td class="docs-prop-name">onChange</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Change handler</td></tr>
                        <tr><td class="docs-prop-name">ariaLabel</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Accessible label</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderTextareaComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-textarea" data-comp="textarea">
            <h1 class="docs-component-title">Textarea</h1>
            <p class="docs-component-desc">Multi-line text input with variant and size support.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><TextArea placeholder="Type your message..." /></div></div>
            <div class="docs-subsection"><h2>With Rows</h2><div class="docs-demo-box"><TextArea rows="5" placeholder="5 rows" /></div></div>
            <div class="docs-subsection"><h2>Disabled</h2><div class="docs-demo-box"><TextArea disabled value="Cannot edit this" /></div></div>
        </div>
    }
}

func renderSelectComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-select" data-comp="select">
            <h1 class="docs-component-title">Select</h1>
            <p class="docs-component-desc">Custom dropdown listbox with keyboard navigation, portal positioning, and WAI-ARIA pattern.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box" style="max-width:320px;">
                    <Select options={["Apple", "Banana", "Cherry", "Date"]} placeholder="Pick a fruit" />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Disabled</h2>
                <div class="docs-demo-box" style="max-width:320px;">
                    <Select disabled options={["Option A", "Option B"]} placeholder="Disabled" />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Size</h2>
                <div class="docs-demo-box" style="max-width:320px;">
                    <div class="docs-demo-grid">
                        <Select size="sm" options={["S1", "S2"]} placeholder="Small" />
                        <Select options={["D1", "D2"]} placeholder="Default" />
                        <Select size="lg" options={["L1", "L2"]} placeholder="Large" />
                    </div>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Default Value</h2>
                <div class="docs-demo-box" style="max-width:320px;">
                    <Select options={["X", "Y", "Z"]} defaultValue="Y" placeholder="Default Y" />
                </div>
            </div>
            <div class="docs-hint">Keyboard: ArrowUp/Down, Home/End, Enter to select, Escape to close, type to search.</div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">options</td><td class="docs-prop-type">string[]</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Array of option strings</td></tr>
                        <tr><td class="docs-prop-name">defaultValue</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Initial selected value</td></tr>
                        <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Controlled value</td></tr>
                        <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">string</td><td class="docs-prop-default">Select...</td><td class="docs-prop-desc">Placeholder text</td></tr>
                        <tr><td class="docs-prop-name">disabled</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Disabled state</td></tr>
                        <tr><td class="docs-prop-name">size</td><td class="docs-prop-type">string</td><td class="docs-prop-default">default</td><td class="docs-prop-desc">sm | default | lg</td></tr>
                        <tr><td class="docs-prop-name">onValueChange</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Selection change callback</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderNativeSelectComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-nativeselect" data-comp="nativeselect">
            <h1 class="docs-component-title">Native Select</h1>
            <p class="docs-component-desc">Native HTML select element with component styling.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box" style="max-width:320px;">
                    <NativeSelect placeholder="Pick a framework...">
                        <option value="chem">Chemical</option>
                        <option value="react">React</option>
                        <option value="solid">Solid</option>
                    </NativeSelect>
                </div>
            </div>
            <div class="docs-subsection"><h2>Disabled</h2><div class="docs-demo-box" style="max-width:320px;"><NativeSelect disabled placeholder="Cannot select"><option>Option</option></NativeSelect></div></div>
        </div>
    }
}

func renderFieldComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-field" data-comp="field">
            <h1 class="docs-component-title">Field</h1>
            <p class="docs-component-desc">Form field wrapper with label, hint, and error text.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box" style="max-width:320px;">
                    <Field><FieldLabel>Username</FieldLabel><Input placeholder="Enter username" /><FieldHint>Must be unique.</FieldHint></Field>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Error State</h2>
                <div class="docs-demo-box" style="max-width:320px;">
                    <Field><FieldLabel>Email</FieldLabel><Input variant="error" placeholder="bad@@" /><FieldError>Invalid email address.</FieldError></Field>
                </div>
            </div>
        </div>
    }
}

func renderCheckboxComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-checkbox" data-comp="checkbox">
            <h1 class="docs-component-title">Checkbox</h1>
            <p class="docs-component-desc">Toggle control for boolean values.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><div class="docs-demo-row"><Checkbox>Accept terms</Checkbox></div></div></div>
            <div class="docs-subsection"><h2>Default Checked</h2><div class="docs-demo-box"><div class="docs-demo-row"><Checkbox checked>Already checked</Checkbox></div></div></div>
            <div class="docs-subsection"><h2>Disabled</h2><div class="docs-demo-box"><div class="docs-demo-row"><Checkbox disabled>Disabled</Checkbox><Checkbox disabled checked>Disabled checked</Checkbox></div></div></div>
            <div class="docs-subsection"><h2>Size</h2><div class="docs-demo-box"><div class="docs-demo-row"><Checkbox size="sm">Small</Checkbox><Checkbox>Default</Checkbox><Checkbox size="lg">Large</Checkbox></div></div></div>
        </div>
    }
}

func renderRadioComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-radio" data-comp="radio">
            <h1 class="docs-component-title">Radio</h1>
            <p class="docs-component-desc">Single selection from a set of options.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><div class="docs-demo-row"><Radio name="demo-radio" checked>Option A</Radio><Radio name="demo-radio">Option B</Radio><Radio name="demo-radio">Option C</Radio></div></div></div>
            <div class="docs-subsection"><h2>Disabled</h2><div class="docs-demo-box"><div class="docs-demo-row"><Radio name="demo-disabled" disabled>Disabled</Radio><Radio name="demo-disabled" disabled checked>Disabled checked</Radio></div></div></div>
            <div class="docs-subsection"><h2>Size</h2><div class="docs-demo-box"><div class="docs-demo-row"><Radio name="demo-size" size="sm">Small</Radio><Radio name="demo-size" checked>Default</Radio><Radio name="demo-size" size="lg">Large</Radio></div></div></div>
        </div>
    }
}

func renderSwitchComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-switch" data-comp="switch">
            <h1 class="docs-component-title">Switch</h1>
            <p class="docs-component-desc">Toggle between two states.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><div class="docs-demo-row"><Switch checked>Airplane Mode</Switch><Switch>Notifications</Switch></div></div></div>
            <div class="docs-subsection"><h2>Disabled</h2><div class="docs-demo-box"><div class="docs-demo-row"><Switch disabled>Disabled off</Switch><Switch disabled checked>Disabled on</Switch></div></div></div>
            <div class="docs-subsection"><h2>Size</h2><div class="docs-demo-box"><div class="docs-demo-row"><Switch size="sm">Small</Switch><Switch>Default</Switch><Switch size="lg">Large</Switch></div></div></div>
        </div>
    }
}

func renderToggleGroupComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-togglegroup" data-comp="togglegroup">
            <h1 class="docs-component-title">Toggle Group</h1>
            <p class="docs-component-desc">A set of toggle buttons with single or multiple selection.</p>
            <div class="docs-subsection">
                <h2>Single</h2>
                <p class="docs-subsection-desc">Only one item can be pressed at a time.</p>
                <div class="docs-demo-box">
                    <ToggleGroup type="single" defaultValue="bold">
                        <ToggleGroupItem value="bold"><b>B</b></ToggleGroupItem>
                        <ToggleGroupItem value="italic"><i>I</i></ToggleGroupItem>
                        <ToggleGroupItem value="underline"><u>U</u></ToggleGroupItem>
                    </ToggleGroup>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Multiple</h2>
                <p class="docs-subsection-desc">Multiple items can be pressed simultaneously.</p>
                <div class="docs-demo-box">
                    <ToggleGroup type="multiple" defaultValue="bold">
                        <ToggleGroupItem value="bold"><b>B</b></ToggleGroupItem>
                        <ToggleGroupItem value="italic"><i>I</i></ToggleGroupItem>
                        <ToggleGroupItem value="underline"><u>U</u></ToggleGroupItem>
                    </ToggleGroup>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Disabled</h2>
                <div class="docs-demo-box">
                    <ToggleGroup type="single" disabled defaultValue="bold">
                        <ToggleGroupItem value="bold"><b>B</b></ToggleGroupItem>
                        <ToggleGroupItem value="italic"><i>I</i></ToggleGroupItem>
                    </ToggleGroup>
                </div>
            </div>
        </div>
    }
}

func renderRadioGroupComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-radiogroup" data-comp="radiogroup">
            <h1 class="docs-component-title">Radio Group</h1>
            <p class="docs-component-desc">Mutually-exclusive radio options with context-based selection.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box">
                    <RadioGroup name="rg-basic" defaultValue="pro">
                        <RadioGroupItem value="free">Free</RadioGroupItem>
                        <RadioGroupItem value="pro">Pro</RadioGroupItem>
                        <RadioGroupItem value="enterprise">Enterprise</RadioGroupItem>
                    </RadioGroup>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Direction</h2>
                <p class="docs-subsection-desc">Use <CodeText>direction="row"</CodeText> for horizontal layout.</p>
                <div class="docs-demo-box">
                    <RadioGroup name="rg-row" defaultValue="md" direction="row">
                        <RadioGroupItem value="sm">Small</RadioGroupItem>
                        <RadioGroupItem value="md">Medium</RadioGroupItem>
                        <RadioGroupItem value="lg">Large</RadioGroupItem>
                    </RadioGroup>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Disabled</h2>
                <div class="docs-demo-box">
                    <RadioGroup name="rg-dis" disabled defaultValue="a">
                        <RadioGroupItem value="a">Disabled A</RadioGroupItem>
                        <RadioGroupItem value="b">Disabled B</RadioGroupItem>
                    </RadioGroup>
                </div>
            </div>
        </div>
    }
}

func renderSliderComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-slider" data-comp="slider">
            <h1 class="docs-component-title">Slider</h1>
            <p class="docs-component-desc">Horizontal slider with draggable thumb and keyboard support.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box" style="max-width:400px;"><Slider defaultValue={30} ariaLabel="Volume" /></div></div>
            <div class="docs-subsection"><h2>Range</h2><p class="docs-subsection-desc">Use <CodeText>min</CodeText>, <CodeText>max</CodeText>, and <CodeText>step</CodeText> props.</p><div class="docs-demo-box" style="max-width:400px;"><Slider min={10} max={20} step={1} defaultValue={15} ariaLabel="Temperature" /></div></div>
            <div class="docs-subsection"><h2>Disabled</h2><div class="docs-demo-box" style="max-width:400px;"><Slider disabled defaultValue={50} ariaLabel="Disabled" /></div></div>
            <div class="docs-subsection">
                <h2>Step</h2>
                <p class="docs-subsection-desc">Use <CodeText>step</CodeText> to control increment precision.</p>
                <div class="docs-demo-box" style="max-width:400px;">
                    <Slider min={0} max={100} step={25} defaultValue={50} ariaLabel="Step 25" />
                </div>
            </div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">defaultValue</td><td class="docs-prop-type">number</td><td class="docs-prop-default">0</td><td class="docs-prop-desc">Initial value</td></tr>
                        <tr><td class="docs-prop-name">min</td><td class="docs-prop-type">number</td><td class="docs-prop-default">0</td><td class="docs-prop-desc">Minimum value</td></tr>
                        <tr><td class="docs-prop-name">max</td><td class="docs-prop-type">number</td><td class="docs-prop-default">100</td><td class="docs-prop-desc">Maximum value</td></tr>
                        <tr><td class="docs-prop-name">step</td><td class="docs-prop-type">number</td><td class="docs-prop-default">1</td><td class="docs-prop-desc">Increment step</td></tr>
                        <tr><td class="docs-prop-name">disabled</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Disabled state</td></tr>
                        <tr><td class="docs-prop-name">ariaLabel</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Accessible label</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderDialogComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-dialog" data-comp="dialog">
            <h1 class="docs-component-title">Dialog</h1>
            <p class="docs-component-desc">A modal overlay with focus trap, inert background, and Escape to close.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <p class="docs-subsection-desc">Click the button below to open a dialog. Press <CodeText>Escape</CodeText> or click the backdrop to close.</p>
                <div class="docs-demo-box">
                    <BasicDialogDemo />
                </div>
                <div class="docs-hint" style="margin-top:0.75rem;">Dialog traps focus inside and makes the background inert.</div>
            </div>
            <div class="docs-subsection">
                <h2>Composition</h2>
                <p class="docs-subsection-desc">Use <CodeText>Dialog</CodeText>, <CodeText>DialogBackdrop</CodeText>, <CodeText>DialogContent</CodeText>, <CodeText>DialogHeader</CodeText>, and <CodeText>DialogActions</CodeText> together.</p>
                <div class="docs-demo-box">
                    <CompositionDialogDemo />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Controlled</h2>
                <p class="docs-subsection-desc">Use <CodeText>open</CodeText> prop to control visibility from parent state.</p>
                <div class="docs-demo-box">
                    <ControlledDialogDemo />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Custom Width</h2>
                <p class="docs-subsection-desc">Set width via inline style on <CodeText>DialogContent</CodeText>.</p>
                <div class="docs-demo-box">
                    <WideDialogDemo />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Custom Close Button</h2>
                <p class="docs-subsection-desc">Add an explicit close button inside <CodeText>DialogActions</CodeText>.</p>
                <div class="docs-demo-box">
                    <CloseButtonDialogDemo />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Example Code</h2>
                <div class="docs-demo-box">
                    <div class="docs-code-block">{`&lt;Dialog open={open}&gt;\n    &lt;DialogBackdrop onClick={close} /&gt;\n    &lt;DialogContent&gt;\n        &lt;DialogHeader&gt;\n            &lt;H3&gt;Title&lt;/H3&gt;\n        &lt;/DialogHeader&gt;\n        &lt;Text&gt;Content&lt;/Text&gt;\n        &lt;DialogActions&gt;\n            &lt;Button onClick={close}&gt;Close&lt;/Button&gt;\n        &lt;/DialogActions&gt;\n    &lt;/DialogContent&gt;\n&lt;/Dialog&gt;`}</div>
                </div>
            </div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">open</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Controlled visibility</td></tr>
                        <tr><td class="docs-prop-name">defaultOpen</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Uncontrolled initial state</td></tr>
                        <tr><td class="docs-prop-name">ariaLabel</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Accessible name</td></tr>
                        <tr><td class="docs-prop-name">onClose</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Dismiss callback</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderSheetComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-sheet" data-comp="sheet">
            <h1 class="docs-component-title">Sheet</h1>
            <p class="docs-component-desc">Modal panel that slides in from an edge of the screen.</p>
            <div class="docs-subsection">
                <h2>Right (Default)</h2>
                <p class="docs-subsection-desc">Sheet slides in from the right edge by default. Click the button to open.</p>
                <div class="docs-demo-box">
                    <SheetSideDemo side="right" label="Open Right Sheet" />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>All Sides</h2>
                <p class="docs-subsection-desc">Use the <CodeText>side</CodeText> prop to choose the edge: left, right, top, or bottom.</p>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <SheetSideDemo side="left" label="Left" variant="outline" />
                        <SheetSideDemo side="right" label="Right" variant="outline" />
                        <SheetSideDemo side="top" label="Top" variant="outline" />
                        <SheetSideDemo side="bottom" label="Bottom" variant="outline" />
                    </div>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>With Title</h2>
                <p class="docs-subsection-desc">Pass <CodeText>title</CodeText> to set the header text and aria-label for accessibility.</p>
                <div class="docs-demo-box">
                    <div class="docs-hint">The sheet header displays the title and provides an accessible name for screen readers.</div>
                </div>
            </div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">side</td><td class="docs-prop-type">string</td><td class="docs-prop-default">right</td><td class="docs-prop-desc">left | right | top | bottom</td></tr>
                        <tr><td class="docs-prop-name">title</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Header title + aria-label</td></tr>
                        <tr><td class="docs-prop-name">open</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Controlled visibility</td></tr>
                        <tr><td class="docs-prop-name">onClose</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Dismiss callback</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderAlertComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-alert" data-comp="alert">
            <h1 class="docs-component-title">Alert</h1>
            <p class="docs-component-desc">Displays a callout for user attention.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box">
                    <Alert variant="info"><div><AlertTitle>Heads up</AlertTitle><AlertDescription>You can add components to your app.</AlertDescription></div></Alert>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Destructive</h2>
                <p class="docs-subsection-desc">Use <CodeText>variant="error"</CodeText> for destructive alerts.</p>
                <div class="docs-demo-box">
                    <Alert variant="error"><div><AlertTitle>Error</AlertTitle><AlertDescription>Your payment could not be processed.</AlertDescription></div></Alert>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Variants</h2>
                <div class="docs-demo-box">
                    <div class="docs-demo-grid">
                        <Alert variant="success"><div><AlertTitle>Success</AlertTitle><AlertDescription>Changes saved successfully.</AlertDescription></div></Alert>
                        <Alert variant="warning"><div><AlertTitle>Warning</AlertTitle><AlertDescription>Your subscription expires soon.</AlertDescription></div></Alert>
                        <Alert variant="accent"><div><AlertTitle>Accent</AlertTitle><AlertDescription>New feature available.</AlertDescription></div></Alert>
                    </div>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Dismissible</h2>
                <p class="docs-subsection-desc">Use <CodeText>dismissible</CodeText> to add a close button.</p>
                <div class="docs-demo-box">
                    <Alert variant="info" dismissible>
                        <AlertTitle>Dismissible</AlertTitle>
                        <AlertDescription>Click the X to close this alert.</AlertDescription>
                    </Alert>
                </div>
            </div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">variant</td><td class="docs-prop-type">string</td><td class="docs-prop-default">default</td><td class="docs-prop-desc">default | info | success | error | warning | accent</td></tr>
                        <tr><td class="docs-prop-name">title</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Alert title</td></tr>
                        <tr><td class="docs-prop-name">description</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Alert description</td></tr>
                        <tr><td class="docs-prop-name">dismissible</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Show close button</td></tr>
                        <tr><td class="docs-prop-name">onDismiss</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Dismiss callback</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderBadgeComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-badge" data-comp="badge">
            <h1 class="docs-component-title">Badge</h1>
            <p class="docs-component-desc">Small label for status, categories, and counts.</p>
            <div class="docs-subsection">
                <h2>Variants</h2>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <Badge>Default</Badge>
                        <Badge variant="secondary">Secondary</Badge>
                        <Badge variant="accent">Accent</Badge>
                        <Badge variant="success">Success</Badge>
                        <Badge variant="error">Error</Badge>
                        <Badge variant="warning">Warning</Badge>
                        <Badge variant="info">Info</Badge>
                        <Badge variant="outline">Outline</Badge>
                    </div>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Size</h2>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <Badge size="xs">XS</Badge>
                        <Badge size="sm">SM</Badge>
                        <Badge>Default</Badge>
                        <Badge size="lg">LG</Badge>
                    </div>
                </div>
            </div>
        </div>
    }
}

func renderAvatarComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-avatar" data-comp="avatar">
            <h1 class="docs-component-title">Avatar</h1>
            <p class="docs-component-desc">User profile image with fallback text.</p>
            <div class="docs-subsection">
                <h2>Size</h2>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <Avatar size="xs">XS</Avatar>
                        <Avatar size="sm">SM</Avatar>
                        <Avatar>MD</Avatar>
                        <Avatar size="lg">LG</Avatar>
                        <Avatar size="xl">XL</Avatar>
                    </div>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Bordered</h2>
                <div class="docs-demo-box">
                    <div class="docs-demo-row"><Avatar bordered>BD</Avatar><Avatar bordered size="lg">BD</Avatar></div>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Group</h2>
                <div class="docs-demo-box">
                    <AvatarGroup><Avatar>A</Avatar><Avatar>B</Avatar><Avatar>C</Avatar></AvatarGroup>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>More Count</h2>
                <div class="docs-demo-box">
                    <div class="docs-demo-row"><Avatar>A</Avatar><Avatar>B</Avatar><AvatarMore count="+5" /></div>
                </div>
            </div>
        </div>
    }
}

func renderCardComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-card" data-comp="card">
            <h1 class="docs-component-title">Card</h1>
            <p class="docs-component-desc">Container for content with header, body, and footer sections.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box" style="max-width:380px;">
                    <Card>
                        <CardHeader><CardTitle>Create project</CardTitle><BadgeAccent>New</BadgeAccent></CardHeader>
                        <CardDescription>Deploy your new project in one-click.</CardDescription>
                        <CardBody><Input placeholder="Project name" /></CardBody>
                        <CardFooter><Button variant="outline">Cancel</Button><Button>Create</Button></CardFooter>
                    </Card>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Interactive</h2>
                <p class="docs-subsection-desc">Cards support <CodeText>onClick</CodeText> for clickable regions.</p>
                <div class="docs-demo-box" style="max-width:380px;">
                    <Card>
                        <CardBody><Text>Click this card</Text></CardBody>
                    </Card>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Title Level</h2>
                <div class="docs-demo-box" style="max-width:380px;">
                    <div class="docs-demo-grid">
                        <Card><CardHeader><CardTitle level={2}>Level 2</CardTitle></CardHeader></Card>
                        <Card><CardHeader><CardTitle level={3}>Level 3 (default)</CardTitle></CardHeader></Card>
                        <Card><CardHeader><CardTitle level={4}>Level 4</CardTitle></CardHeader></Card>
                    </div>
                </div>
            </div>
        </div>
    }
}

func renderAccordionComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-accordion" data-comp="accordion">
            <h1 class="docs-component-title">Accordion</h1>
            <p class="docs-component-desc">A vertically stacked set of interactive headings that each reveal a section of content.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <p class="docs-subsection-desc">Each <CodeText>AccordionItem</CodeText> manages its own open state via the <CodeText>trigger</CodeText> prop and <CodeText>defaultOpen</CodeText>.</p>
                <div class="docs-demo-box">
                    <Accordion>
                        <AccordionItem value="item-1" trigger="Is it accessible?" defaultOpen={true}>
                            Yes. It adheres to the WAI-ARIA design pattern.
                        </AccordionItem>
                        <AccordionItem value="item-2" trigger="What is Chemical?">
                            Chemical is a programming language that compiles to C and LLVM IR.
                        </AccordionItem>
                        <AccordionItem value="item-3" trigger="Is it fast?">
                            Yes. TinyCC backend compiles in milliseconds.
                        </AccordionItem>
                    </Accordion>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Default Open</h2>
                <p class="docs-subsection-desc">Use <CodeText>defaultOpen</CodeText> to start an item expanded.</p>
                <div class="docs-demo-box">
                    <Accordion>
                        <AccordionItem value="a" trigger="Open by default" defaultOpen={true}>
                            This content is visible on page load.
                        </AccordionItem>
                        <AccordionItem value="b" trigger="Closed by default">
                            Click the trigger to reveal this.
                        </AccordionItem>
                    </Accordion>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Multiple Open</h2>
                <p class="docs-subsection-desc">Each item manages its own state independently. Multiple items can be open at the same time.</p>
                <div class="docs-demo-box">
                    <Accordion multiple={true}>
                        <AccordionItem value="a" trigger="First item" defaultOpen={true}>
                            Content A is visible.
                        </AccordionItem>
                        <AccordionItem value="b" trigger="Second item" defaultOpen={true}>
                            Content B is also visible.
                        </AccordionItem>
                        <AccordionItem value="c" trigger="Third item">
                            Content C is hidden.
                        </AccordionItem>
                    </Accordion>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Disabled</h2>
                <p class="docs-subsection-desc">Use the <CodeText>disabled</CodeText> prop on AccordionItem to disable individual items.</p>
                <div class="docs-demo-box">
                    <Accordion>
                        <AccordionItem value="enabled" trigger="Enabled">
                            This can be toggled.
                        </AccordionItem>
                        <AccordionItem value="disabled" trigger="Disabled" disabled={true}>
                            This cannot be opened.
                        </AccordionItem>
                    </Accordion>
                </div>
            </div>
        </div>
    }
}

func renderTabsComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-tabs" data-comp="tabs">
            <h1 class="docs-component-title">Tabs</h1>
            <p class="docs-component-desc">Tabbed interface with keyboard navigation and ARIA labels.</p>
            <div class="docs-subsection">
                <h2>Basic</h2>
                <div class="docs-demo-box">
                    <Tabs tabs={["Overview", "Installation", "Usage"]} panels={["Overview content goes here.", "Run npm install chemical.", "Import and use components."]} defaultIndex={0} />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>With ARIA Label</h2>
                <p class="docs-subsection-desc">Pass <CodeText>ariaLabel</CodeText> for accessibility.</p>
                <div class="docs-demo-box">
                    <Tabs tabs={["One", "Two"]} panels={["Panel 1", "Panel 2"]} ariaLabel="Settings tabs" />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Default Tab</h2>
                <p class="docs-subsection-desc">Use <CodeText>defaultIndex</CodeText> to select the initially active tab.</p>
                <div class="docs-demo-box">
                    <Tabs tabs={["First", "Second", "Third"]} panels={["You see this first.", "Second panel.", "Third panel."]} defaultIndex={2} />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Two Tabs</h2>
                <p class="docs-subsection-desc">Works with as few as two tabs.</p>
                <div class="docs-demo-box">
                    <Tabs tabs={["Profile", "Settings"]} panels={["Edit your profile information.", "Manage account settings."]} defaultIndex={0} />
                </div>
            </div>
            <div class="docs-hint">Keyboard: ArrowLeft/Right to move, Home/End to jump, roving tabindex.</div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">tabs</td><td class="docs-prop-type">string[]</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Tab label strings</td></tr>
                        <tr><td class="docs-prop-name">panels</td><td class="docs-prop-type">string[]</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Panel content strings</td></tr>
                        <tr><td class="docs-prop-name">defaultIndex</td><td class="docs-prop-type">int</td><td class="docs-prop-default">0</td><td class="docs-prop-desc">Initially active tab index</td></tr>
                        <tr><td class="docs-prop-name">ariaLabel</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Accessible label</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderCollapsibleComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-collapsible" data-comp="collapsible">
            <h1 class="docs-component-title">Collapsible</h1>
            <p class="docs-component-desc">A toggle to show and hide content.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><Collapsible trigger="Click to expand"><Text>Hidden content that toggles on click.</Text></Collapsible></div></div>
            <div class="docs-subsection"><h2>Default Open</h2><div class="docs-demo-box"><Collapsible trigger="Initially open" defaultOpen={true}><Text>This content is visible by default.</Text></Collapsible></div></div>            <div class="docs-subsection"><h2>Disabled</h2><div class="docs-demo-box"><Collapsible trigger="Disabled" disabled><Text>Cannot toggle this.</Text></Collapsible></div></div>
            <div class="docs-subsection">
                <h2>Nested Content</h2>
                <p class="docs-subsection-desc">Collapsible can contain any content — text, lists, or other components.</p>
                <div class="docs-demo-box">
                    <Collapsible trigger="Show details">
                        <div class="docs-demo-grid">
                            <Badge variant="info">Status: Active</Badge>
                            <Badge variant="success">Role: Admin</Badge>
                            <Badge>Joined: Jan 2024</Badge>
                        </div>
                    </Collapsible>
                </div>
            </div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">trigger</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Trigger button label</td></tr>
                        <tr><td class="docs-prop-name">defaultOpen</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Initially open</td></tr>
                        <tr><td class="docs-prop-name">disabled</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Disabled state</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderProgressComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-progress" data-comp="progress">
            <h1 class="docs-component-title">Progress</h1>
            <p class="docs-component-desc">Shows completion progress of a task.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box" style="max-width:400px;"><Progress value={33} /></div></div>
            <div class="docs-subsection"><h2>Variants</h2><div class="docs-demo-box" style="max-width:400px;" class="docs-demo-grid"><Progress value={60} variant="primary" /><Progress value={75} variant="success" /><Progress value={40} variant="warning" /><Progress value={90} variant="error" /><Progress value={55} variant="info" /></div></div>
            <div class="docs-subsection"><h2>Size</h2><div class="docs-demo-box" style="max-width:400px;"><div class="docs-demo-grid"><Progress value={50} size="sm" /><Progress value={50} /><Progress value={50} size="lg" /></div></div></div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">number</td><td class="docs-prop-default">0</td><td class="docs-prop-desc">Progress percentage (0-100)</td></tr>
                        <tr><td class="docs-prop-name">variant</td><td class="docs-prop-type">string</td><td class="docs-prop-default">default</td><td class="docs-prop-desc">primary | success | warning | error | info</td></tr>
                        <tr><td class="docs-prop-name">size</td><td class="docs-prop-type">string</td><td class="docs-prop-default">default</td><td class="docs-prop-desc">sm | default | lg</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderPaginationComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-pagination" data-comp="pagination">
            <h1 class="docs-component-title">Pagination</h1>
            <p class="docs-component-desc">Page navigation with prev/next controls.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><Pagination pages={[1, 2, 3, 4, 5]} defaultPage={1} /></div></div>
            <div class="docs-subsection"><h2>Custom Labels</h2><div class="docs-demo-box"><Pagination pages={[1, 2, 3]} defaultPage={2} prevLabel="Previous" nextLabel="Next" /></div></div>
            <div class="docs-subsection">
                <h2>Many Pages</h2>
                <div class="docs-demo-box"><Pagination pages={[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]} defaultPage={5} /></div>
            </div>
            <div class="docs-subsection">
                <h2>Default Page</h2>
                <p class="docs-subsection-desc">Use <CodeText>defaultPage</CodeText> to set the initially active page.</p>
                <div class="docs-demo-box"><Pagination pages={[1, 2, 3, 4, 5]} defaultPage={3} /></div>
            </div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">pages</td><td class="docs-prop-type">number[]</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Page numbers</td></tr>
                        <tr><td class="docs-prop-name">defaultPage</td><td class="docs-prop-type">int</td><td class="docs-prop-default">1</td><td class="docs-prop-desc">Initially active page</td></tr>
                        <tr><td class="docs-prop-name">prevLabel</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Previous button label</td></tr>
                        <tr><td class="docs-prop-name">nextLabel</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Next button label</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderToastComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-toast" data-comp="toast">
            <h1 class="docs-component-title">Toast</h1>
            <p class="docs-component-desc">Notification popup with auto-dismiss, variants, and action buttons.</p>
            <div class="docs-subsection">
                <h2>Interactive</h2>
                <p class="docs-subsection-desc">Click a button to trigger a toast notification. They auto-dismiss after 4 seconds.</p>
                <div class="docs-demo-box">
                    <ToastDemo />
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Variants (Static)</h2>
                <div class="docs-demo-box" style="max-width:320px;">
                    <div class="docs-demo-grid">
                        <Toast title="Saved" description="Changes were saved." duration={0} />
                        <Toast variant="success" title="Success" description="Action completed." duration={0} />
                        <Toast variant="destructive" title="Error" description="Something went wrong." duration={0} />
                        <Toast variant="info" title="Info" description="New update available." duration={0} />
                        <Toast variant="warning" title="Warning" description="Disk space low." duration={0} />
                    </div>
                </div>
            </div>
            <div class="docs-subsection">
                <h2>Action Button</h2>
                <p class="docs-subsection-desc">Pass <CodeText>action</CodeText> to add a clickable action button to the toast.</p>
                <div class="docs-demo-box" style="max-width:320px;">
                    <Toast title="Undo" description="Action was performed." action="Undo" duration={0} />
                </div>
            </div>
            <hr class="docs-divider" />
            <div class="docs-subsection">
                <h2>API Reference</h2>
                <table class="docs-props-table">
                    <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                    <tbody>
                        <tr><td class="docs-prop-name">variant</td><td class="docs-prop-type">string</td><td class="docs-prop-default">default</td><td class="docs-prop-desc">default | success | destructive | info | warning</td></tr>
                        <tr><td class="docs-prop-name">title</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Toast title</td></tr>
                        <tr><td class="docs-prop-name">description</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Toast description</td></tr>
                        <tr><td class="docs-prop-name">duration</td><td class="docs-prop-type">int</td><td class="docs-prop-default">4000</td><td class="docs-prop-desc">Auto-dismiss ms (0 = no dismiss)</td></tr>
                        <tr><td class="docs-prop-name">action</td><td class="docs-prop-type">string</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Action button label</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    }
}

func renderTooltipComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-tooltip" data-comp="tooltip">
            <h1 class="docs-component-title">Tooltip</h1>
            <p class="docs-component-desc">Hover-triggered informational popup.</p>
            <div class="docs-subsection">
                <h2>Positions</h2>
                <div class="docs-demo-box">
                    <div class="docs-demo-row">
                        <Tooltip label="Top tip"><Button variant="outline">Top</Button></Tooltip>
                        <Tooltip label="Bottom tip" position="bottom"><Button variant="outline">Bottom</Button></Tooltip>
                        <Tooltip label="Left tip" position="left"><Button variant="outline">Left</Button></Tooltip>
                        <Tooltip label="Right tip" position="right"><Button variant="outline">Right</Button></Tooltip>
                    </div>
                </div>
            </div>
        </div>
    }
}

func renderTableComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-table" data-comp="table">
            <h1 class="docs-component-title">Table</h1>
            <p class="docs-component-desc">Data table with header and cell components.</p>
            <div class="docs-subsection"><h2>Basic</h2>
                <div class="docs-demo-box">
                    <Table>
                        <thead><tr><TableHeadCell>Name</TableHeadCell><TableHeadCell>Status</TableHeadCell><TableHeadCell>Score</TableHeadCell></tr></thead>
                        <tbody>
                            <tr><TableCell>Alpha</TableCell><TableCell>Active</TableCell><TableCell>95</TableCell></tr>
                            <tr><TableCell>Beta</TableCell><TableCell>Pending</TableCell><TableCell>82</TableCell></tr>
                            <tr><TableCell>Gamma</TableCell><TableCell>Inactive</TableCell><TableCell>71</TableCell></tr>
                        </tbody>
                    </Table>
                </div>
            </div>
        </div>
    }
}

func renderListComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-list" data-comp="list">
            <h1 class="docs-component-title">List</h1>
            <p class="docs-component-desc">Styled list of items.</p>
            <div class="docs-subsection"><h2>Basic</h2>
                <div class="docs-demo-box" style="max-width:400px;">
                    <List>
                        <ListItem>First item</ListItem>
                        <ListItem>Second item</ListItem>
                        <ListItem>Third item</ListItem>
                    </List>
                </div>
            </div>
        </div>
    }
}

func renderSeparatorComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-separator" data-comp="separator">
            <h1 class="docs-component-title">Separator</h1>
            <p class="docs-component-desc">Visual divider between content sections.</p>
            <div class="docs-subsection"><h2>Horizontal</h2><div class="docs-demo-box"><Text>Above</Text><Separator /><Text>Below</Text></div></div>
            <div class="docs-subsection"><h2>Vertical</h2><div class="docs-demo-box"><div style="display:flex;align-items:center;gap:1rem;height:2rem;"><Text>Left</Text><Separator orientation="vertical" /><Text>Right</Text></div></div></div>
        </div>
    }
}

func renderSkeletonComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-skeleton" data-comp="skeleton">
            <h1 class="docs-component-title">Skeleton</h1>
            <p class="docs-component-desc">Loading placeholder with shimmer animation.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><div class="docs-demo-row"><Skeleton width="200px" height="20px" /><Skeleton width="120px" height="20px" /></div></div></div>
            <div class="docs-subsection"><h2>Circle</h2><div class="docs-demo-box"><div class="docs-demo-row"><Skeleton circle /><Skeleton circle width="3rem" height="3rem" /></div></div></div>
        </div>
    }
}

func renderSpinnerComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-spinner" data-comp="spinner">
            <h1 class="docs-component-title">Spinner</h1>
            <p class="docs-component-desc">Loading indicator with role=status for accessibility.</p>
            <div class="docs-subsection"><h2>Size</h2><div class="docs-demo-box"><div class="docs-demo-row"><Spinner size="sm" /><Spinner /><Spinner size="lg" /></div></div></div>
            <div class="docs-subsection"><h2>With Label</h2><div class="docs-demo-box"><div class="docs-demo-row"><Spinner label="Loading data" /><Spinner size="lg" label="Heavy load" /></div></div></div>
        </div>
    }
}

func renderKbdComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-kbd" data-comp="kbd">
            <h1 class="docs-component-title">Kbd</h1>
            <p class="docs-component-desc">Keyboard shortcut indicator.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><div class="docs-demo-row"><Kbd>Ctrl</Kbd><Kbd>Shift</Kbd><Kbd>K</Kbd></div></div></div>
        </div>
    }
}

func renderIconComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-icon" data-comp="icon">
            <h1 class="docs-component-title">Icon</h1>
            <p class="docs-component-desc">Styled icon container.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><div class="docs-demo-row"><Icon>+</Icon><Icon>?</Icon><Icon>i</Icon></div></div></div>
        </div>
    }
}

func renderDividerComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-divider" data-comp="divider">
            <h1 class="docs-component-title">Divider</h1>
            <p class="docs-component-desc">Horizontal rule divider.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><Text>Above</Text><Divider /><Text>Below</Text></div></div>
        </div>
    }
}

func renderBreadcrumbComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-breadcrumbs" data-comp="breadcrumbs">
            <h1 class="docs-component-title">Breadcrumb</h1>
            <p class="docs-component-desc">Navigation breadcrumb trail.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box">
                <Breadcrumbs>
                    <BreadcrumbItem><BreadcrumbLink href="/">Home</BreadcrumbLink></BreadcrumbItem>
                    <BreadcrumbSeparator />
                    <BreadcrumbItem><BreadcrumbLink href="/docs">Docs</BreadcrumbLink></BreadcrumbItem>
                    <BreadcrumbSeparator separator="→" />
                    <BreadcrumbItem><BreadcrumbCurrent>Components</BreadcrumbCurrent></BreadcrumbItem>
                </Breadcrumbs>
            </div></div>
        </div>
    }
}

func renderContainerComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-container" data-comp="container">
            <h1 class="docs-component-title">Container</h1>
            <p class="docs-component-desc">Centered content wrapper with max-width breakpoints.</p>
            <div class="docs-subsection"><h2>Sizes</h2><div class="docs-demo-box"><div class="docs-demo-grid">
                <Container size="sm"><div style="padding:0.5rem;border:1px dashed hsl(var(--border));border-radius:8px;"><Text>sm (40rem)</Text></div></Container>
                <Container size="md"><div style="padding:0.5rem;border:1px dashed hsl(var(--border));border-radius:8px;"><Text>md (48rem)</Text></div></Container>
                <Container><div style="padding:0.5rem;border:1px dashed hsl(var(--border));border-radius:8px;"><Text>default (80rem)</Text></div></Container>
                <Container size="full"><div style="padding:0.5rem;border:1px dashed hsl(var(--border));border-radius:8px;"><Text>full (no max)</Text></div></Container>
            </div></div></div>
        </div>
    }
}

func renderStackComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-stack" data-comp="stack">
            <h1 class="docs-component-title">Stack</h1>
            <p class="docs-component-desc">Flexbox layout primitive with direction, gap, and alignment.</p>
            <div class="docs-subsection"><h2>Direction</h2><div class="docs-demo-box">
                <Stack direction="row" gap="sm" style="padding:1rem;border:1px dashed hsl(var(--border));border-radius:8px;"><Badge>A</Badge><Badge>B</Badge><Badge>C</Badge></Stack>
            </div></div>
            <div class="docs-subsection"><h2>Justify Between</h2><div class="docs-demo-box">
                <Stack direction="row" justify="between" gap="sm" style="padding:1rem;border:1px dashed hsl(var(--border));border-radius:8px;"><Badge>Left</Badge><Badge>Right</Badge></Stack>
            </div></div>
        </div>
    }
}

func renderGridComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-grid" data-comp="grid">
            <h1 class="docs-component-title">Grid</h1>
            <p class="docs-component-desc">CSS Grid layout primitive.</p>
            <div class="docs-subsection"><h2>Columns</h2><div class="docs-demo-box">
                <Grid cols="3" gap="sm" style="padding:1rem;border:1px dashed hsl(var(--border));border-radius:8px;">
                    <div style="padding:0.5rem;background:hsl(var(--muted));border-radius:8px;text-align:center;"><Text>1</Text></div>
                    <div style="padding:0.5rem;background:hsl(var(--muted));border-radius:8px;text-align:center;"><Text>2</Text></div>
                    <div style="padding:0.5rem;background:hsl(var(--muted));border-radius:8px;text-align:center;"><Text>3</Text></div>
                </Grid>
            </div></div>
        </div>
    }
}

func renderPaperComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-paper" data-comp="paper">
            <h1 class="docs-component-title">Paper</h1>
            <p class="docs-component-desc">Elevated surface container with border and shadow.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box" style="max-width:380px;"><Paper><Text>Paper content with border and shadow.</Text></Paper></div></div>
        </div>
    }
}

func renderAppBarComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-appbar" data-comp="appbar">
            <h1 class="docs-component-title">AppBar</h1>
            <p class="docs-component-desc">Horizontal navigation bar.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><AppBar><H3>My App</H3><Button variant="outline" size="sm">Menu</Button></AppBar></div></div>
        </div>
    }
}

func renderDrawerComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-drawer" data-comp="drawer">
            <h1 class="docs-component-title">Drawer</h1>
            <p class="docs-component-desc">Side panel for navigation or settings.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box" style="max-width:300px;"><Drawer><H3>Drawer</H3><Text>Side panel content.</Text><Menu><MenuItem href="#">Item 1</MenuItem><MenuItem href="#">Item 2</MenuItem></Menu></Drawer></div></div>
        </div>
    }
}

func renderPopoverComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-popover" data-comp="popover">
            <h1 class="docs-component-title">Popover</h1>
            <p class="docs-component-desc">Floating surface for contextual content.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box" style="max-width:300px;"><Popover><Caption>Popover</Caption><Text>Contextual content here.</Text></Popover></div></div>
        </div>
    }
}

func renderSnackbarComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-snackbar" data-comp="snackbar">
            <h1 class="docs-component-title">Snackbar</h1>
            <p class="docs-component-desc">Inline status notification.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><Snackbar><BadgeSuccess>Saved</BadgeSuccess><Text>Changes written to disk.</Text></Snackbar></div></div>
        </div>
    }
}

func renderBottomBarComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-bottombar" data-comp="bottombar">
            <h1 class="docs-component-title">Bottom Bar</h1>
            <p class="docs-component-desc">Mobile navigation bar for app shells.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><BottomBar><IconButton><Icon>H</Icon></IconButton><IconButton><Icon>S</Icon></IconButton><Fab><Icon>+</Icon>New</Fab><IconButton><Icon>P</Icon></IconButton></BottomBar></div></div>
        </div>
    }
}

func renderEmptyComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-empty" data-comp="empty">
            <h1 class="docs-component-title">Empty State</h1>
            <p class="docs-component-desc">Placeholder when no data is available.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box"><EmptyState><H3>No results</H3><Text>Try adjusting your search filters.</Text><Button>Clear filters</Button></EmptyState></div></div>
        </div>
    }
}

func renderStatCardComp(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-statcard" data-comp="statcard">
            <h1 class="docs-component-title">Stat Card</h1>
            <p class="docs-component-desc">Compact metric display card.</p>
            <div class="docs-subsection"><h2>Basic</h2><div class="docs-demo-box" style="max-width:380px;"><StatCard><Caption>Revenue</Caption><H2>$12,345</H2><BadgeSuccess>+12%</BadgeSuccess></StatCard></div></div>
        </div>
    }
}

func SetupComponentNav(page : &mut HtmlPage) {
    #html {
        <script>{"""
            (function() {
                var sections = document.querySelectorAll('.docs-section');
                var sidebarItems = document.querySelectorAll('.docs-sidebar-item');
                var currentHash = window.location.hash.slice(1) || 'headings';
                function showComponent(id) {
                    sections.forEach(function(s) { s.classList.remove('active'); });
                    sidebarItems.forEach(function(s) { s.classList.remove('active'); });
                    var section = document.getElementById('docs-' + id);
                    if (section) section.classList.add('active');
                    var item = document.querySelector('.docs-sidebar-item[data-comp="' + id + '"]');
                    if (item) item.classList.add('active');
                }
                showComponent(currentHash);
                sidebarItems.forEach(function(item) {
                    item.addEventListener('click', function(e) {
                        showComponent(this.getAttribute('data-comp'));
                    });
                });
                window.addEventListener('hashchange', function() {
                    showComponent(window.location.hash.slice(1) || 'headings');
                });
            })();
        """}</script>
    }
}
