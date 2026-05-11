func ComponentsDocPage(page : &mut HtmlPage) {
    page.appendTitle("Components - Chemical")
    page.defaultPrepare()
    page.defaultUniversalSetup()
    page.injectDefaultComponentsTheme()
    GlobalStyles(page)
    GlassHeader(page, "components")

    #css {
        .docs-layout { display: flex; gap: 0; min-height: calc(100vh - 64px); padding-top: 64px; }
        .docs-sidebar {
            width: 260px; flex-shrink: 0;
            background: rgba(10, 10, 12, 0.4);
            border-right: 1px solid rgba(255, 255, 255, 0.06);
            padding: 1.5rem 0;
            overflow-y: auto;
            position: fixed; top: 64px; left: 0; bottom: 0;
        }
        .docs-sidebar::-webkit-scrollbar { width: 6px; }
        .docs-sidebar::-webkit-scrollbar-track { background: transparent; }
        .docs-sidebar::-webkit-scrollbar-thumb { background: rgba(255,255,255,0.12); border-radius: 3px; }
        .docs-sidebar::-webkit-scrollbar-thumb:hover { background: rgba(255,255,255,0.2); }
        .docs-sidebar-group { margin-bottom: 1.25rem; }
        .docs-sidebar-group-title {
            padding: 0.4rem 1.25rem;
            font-size: 0.7rem;
            text-transform: uppercase;
            letter-spacing: 0.08em;
            color: var(--chx-text-muted);
            font-weight: 700;
        }
        .docs-sidebar-item {
            display: block;
            padding: 0.45rem 1.25rem 0.45rem 1.25rem;
            color: #888;
            text-decoration: none;
            font-size: 0.88rem;
            font-weight: 500;
            transition: color 0.18s, background 0.18s;
            border-left: 2px solid transparent;
        }
        .docs-sidebar-item:hover { color: #fff; background: rgba(255,255,255,0.03); }
        .docs-sidebar-item.active { color: #fff; border-left-color: #00d4ff; background: rgba(0,212,255,0.06); }
        .docs-sidebar-item-sub { padding-left: 2.5rem; font-size: 0.82rem; color: #666; }
        .docs-main {
            margin-left: 260px;
            flex: 1;
            padding: 3rem 3rem 6rem;
            max-width: 960px;
        }
        .docs-section { display: none; }
        .docs-section.active { display: block; }
        .docs-component-title {
            font-size: 2.5rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            margin: 0 0 0.5rem;
        }
        .docs-component-desc {
            color: var(--chx-text-muted);
            font-size: 1.1rem;
            line-height: 1.6;
            margin: 0 0 2rem;
            max-width: 640px;
        }
        .docs-props-table {
            width: 100%;
            border-collapse: collapse;
            margin: 1.5rem 0 2.5rem;
            border: 1px solid var(--chx-border);
            border-radius: 12px;
            overflow: hidden;
        }
        .docs-props-table th {
            text-align: left;
            padding: 0.75rem 1rem;
            background: var(--chx-surface-2);
            color: var(--chx-text-main);
            font-size: 0.8rem;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            border-bottom: 1px solid var(--chx-border);
        }
        .docs-props-table td {
            padding: 0.7rem 1rem;
            color: var(--chx-text-main);
            font-size: 0.9rem;
            border-bottom: 1px solid var(--chx-border);
        }
        .docs-props-table tr:last-child td { border-bottom: none; }
        .docs-prop-name { font-weight: 700; color: var(--chx-accent); font-family: monospace; }
        .docs-prop-type { color: var(--chx-text-muted); font-family: monospace; font-size: 0.82rem; }
        .docs-prop-default { color: var(--chx-text-muted); font-family: monospace; font-size: 0.82rem; }
        .docs-prop-desc { color: var(--chx-text-muted); }
        .docs-demo-box {
            border: 1px solid var(--chx-border);
            border-radius: 14px;
            padding: 1.5rem;
            background: var(--chx-surface);
            margin-top: 1.5rem;
        }
        .docs-demo-label {
            font-size: 0.8rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            color: var(--chx-text-muted);
            margin-bottom: 1rem;
        }
    }

    #html {
        {"""<div class="container" style="max-width:100%;padding:0;"><div class="docs-layout">"""}
                <nav class="docs-sidebar">
                    <div class="docs-sidebar-group">
                        <div class="docs-sidebar-group-title">Typography</div>
                        <a href="#h1" class="docs-sidebar-item active" data-comp="h1">H1</a>
                        <a href="#h2" class="docs-sidebar-item" data-comp="h2">H2</a>
                        <a href="#h3" class="docs-sidebar-item" data-comp="h3">H3</a>
                        <a href="#text" class="docs-sidebar-item" data-comp="text">Text</a>
                        <a href="#lead" class="docs-sidebar-item" data-comp="lead">Lead</a>
                        <a href="#caption" class="docs-sidebar-item" data-comp="caption">Caption</a>
                        <a href="#codetext" class="docs-sidebar-item" data-comp="codetext">CodeText</a>
                        <a href="#link" class="docs-sidebar-item" data-comp="link">Link</a>
                    </div>
                    <div class="docs-sidebar-group">
                        <div class="docs-sidebar-group-title">Buttons</div>
                        <a href="#button" class="docs-sidebar-item" data-comp="button">Button</a>
                        <a href="#buttonprimary" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="buttonprimary">Primary</a>
                        <a href="#buttonghost" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="buttonghost">Ghost</a>
                        <a href="#buttonoutline" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="buttonoutline">Outline</a>
                        <a href="#buttondanger" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="buttondanger">Danger</a>
                        <a href="#buttonsuccess" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="buttonsuccess">Success</a>
                        <a href="#buttonsm" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="buttonsm">Small</a>
                        <a href="#buttonlg" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="buttonlg">Large</a>
                        <a href="#iconbutton" class="docs-sidebar-item" data-comp="iconbutton">IconButton</a>
                        <a href="#fab" class="docs-sidebar-item" data-comp="fab">Fab</a>
                    </div>
                    <div class="docs-sidebar-group">
                        <div class="docs-sidebar-group-title">Inputs</div>
                        <a href="#input" class="docs-sidebar-item" data-comp="input">Input</a>
                        <a href="#textarea" class="docs-sidebar-item" data-comp="textarea">TextArea</a>
                        <a href="#select" class="docs-sidebar-item" data-comp="select">Select</a>
                        <a href="#inputfilled" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="inputfilled">Filled</a>
                        <a href="#inputsuccess" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="inputsuccess">Success</a>
                        <a href="#inputerror" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="inputerror">Error</a>
                        <a href="#inputghost" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="inputghost">Ghost</a>
                        <a href="#inputsm" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="inputsm">Small</a>
                        <a href="#inputlg" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="inputlg">Large</a>
                        <a href="#inputdisabled" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="inputdisabled">Disabled</a>
                        <a href="#field" class="docs-sidebar-item" data-comp="field">Field</a>
                    </div>
                    <div class="docs-sidebar-group">
                        <div class="docs-sidebar-group-title">Toggles</div>
                        <a href="#checkbox" class="docs-sidebar-item" data-comp="checkbox">Checkbox</a>
                        <a href="#radio" class="docs-sidebar-item" data-comp="radio">Radio</a>
                        <a href="#switch" class="docs-sidebar-item" data-comp="switch">Switch</a>
                    </div>
                    <div class="docs-sidebar-group">
                        <div class="docs-sidebar-group-title">Data</div>
                        <a href="#progress" class="docs-sidebar-item" data-comp="progress">Progress</a>
                        <a href="#accordion" class="docs-sidebar-item" data-comp="accordion">Accordion</a>
                        <a href="#accordionitem" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="accordionitem">AccordionItem</a>
                        <a href="#tabs" class="docs-sidebar-item" data-comp="tabs">Tabs</a>
                        <a href="#pagination" class="docs-sidebar-item" data-comp="pagination">Pagination</a>
                        <a href="#list" class="docs-sidebar-item" data-comp="list">List</a>
                        <a href="#table" class="docs-sidebar-item" data-comp="table">Table</a>
                    </div>
                    <div class="docs-sidebar-group">
                        <div class="docs-sidebar-group-title">Cards</div>
                        <a href="#card" class="docs-sidebar-item" data-comp="card">Card</a>
                        <a href="#statcard" class="docs-sidebar-item" data-comp="statcard">StatCard</a>
                    </div>
                    <div class="docs-sidebar-group">
                        <div class="docs-sidebar-group-title">Surface</div>
                        <a href="#paper" class="docs-sidebar-item" data-comp="paper">Paper</a>
                        <a href="#appbar" class="docs-sidebar-item" data-comp="appbar">AppBar</a>
                        <a href="#drawer" class="docs-sidebar-item" data-comp="drawer">Drawer</a>
                        <a href="#menu" class="docs-sidebar-item" data-comp="menu">Menu</a>
                        <a href="#popover" class="docs-sidebar-item" data-comp="popover">Popover</a>
                        <a href="#dialog" class="docs-sidebar-item" data-comp="dialog">Dialog</a>
                        <a href="#snackbar" class="docs-sidebar-item" data-comp="snackbar">Snackbar</a>
                        <a href="#tooltip" class="docs-sidebar-item" data-comp="tooltip">Tooltip</a>
                        <a href="#bottombar" class="docs-sidebar-item" data-comp="bottombar">BottomBar</a>
                        <a href="#emptystate" class="docs-sidebar-item" data-comp="emptystate">EmptyState</a>
                    </div>
                    <div class="docs-sidebar-group">
                        <div class="docs-sidebar-group-title">Alerts</div>
                        <a href="#alert" class="docs-sidebar-item" data-comp="alert">Alert</a>
                        <a href="#alertaccent" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="alertaccent">Accent</a>
                        <a href="#alertsuccess" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="alertsuccess">Success</a>
                        <a href="#alerterror" class="docs-sidebar-item docs-sidebar-item-sub" data-comp="alerterror">Error</a>
                    </div>
                    <div class="docs-sidebar-group">
                        <div class="docs-sidebar-group-title">Badges and Chips</div>
                        <a href="#badge" class="docs-sidebar-item" data-comp="badge">Badge</a>
                        <a href="#chip" class="docs-sidebar-item" data-comp="chip">Chip</a>
                        <a href="#avatar" class="docs-sidebar-item" data-comp="avatar">Avatar</a>
                        <a href="#kbd" class="docs-sidebar-item" data-comp="kbd">Kbd</a>
                    </div>
                    <div class="docs-sidebar-group">
                        <div class="docs-sidebar-group-title">Utilities</div>
                        <a href="#divider" class="docs-sidebar-item" data-comp="divider">Divider</a>
                        <a href="#icon" class="docs-sidebar-item" data-comp="icon">Icon</a>
                    </div>
                </nav>
                {"""<main class="docs-main">"""}
                    <div class="docs-section active" id="docs-h1" data-comp="h1">
                        <h1 class="docs-component-title">H1</h1>
                        <p class="docs-component-desc">Top-level heading. Renders an h1 element.</p>
                        <table class="docs-props-table">
                            <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                            <tbody>
                                <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Heading text</td></tr>
                                <tr><td class="docs-prop-name">class</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">CSS classes</td></tr>
                            </tbody>
                        </table>
                        <div class="docs-demo-box">
                            <div class="docs-demo-label">Live Demo</div>
                            <H1>Heading Level 1</H1>
                        </div>
                    </div>
    }

    renderH2(page)
    renderH3(page)
    renderText(page)
    renderLead(page)
    renderCaption(page)
    renderCodeText(page)
    renderLink(page)
    renderButton(page)
    renderButtonPrimary(page)
    renderButtonGhost(page)
    renderButtonOutline(page)
    renderButtonDanger(page)
    renderButtonSuccess(page)
    renderButtonSm(page)
    renderButtonLg(page)
    renderIconButton(page)
    renderFab(page)
    renderInput(page)
    renderTextArea(page)
    renderSelect(page)
    renderInputFilled(page)
    renderInputSuccess(page)
    renderInputError(page)
    renderInputGhost(page)
    renderInputSm(page)
    renderInputLg(page)
    renderInputDisabled(page)
    renderField(page)
    renderCheckbox(page)
    renderRadio(page)
    renderSwitch(page)
    renderProgress(page)
    renderAccordion(page)
    renderAccordionItem(page)
    renderTabs(page)
    renderPagination(page)
    renderList(page)
    renderTable(page)
    renderCard(page)
    renderStatCard(page)
    renderPaper(page)
    renderAppBar(page)
    renderDrawer(page)
    renderMenu(page)
    renderPopover(page)
    renderDialog(page)
    renderSnackbar(page)
    renderTooltip(page)
    renderBottomBar(page)
    renderEmptyState(page)
    renderAlert(page)
    renderAlertAccent(page)
    renderAlertSuccess(page)
    renderAlertError(page)
    renderBadge(page)
    renderChip(page)
    renderAvatar(page)
    renderKbd(page)
    renderDivider(page)
    renderIcon(page)

    SetupComponentNav(page)
    #html {
        {"""</main></div></div>"""}
    }
    SocialFooter(page)
    SetupThemeScript(page)
}
func renderH2(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-h2" data-comp="h2">
            <h1 class="docs-component-title">H2</h1>
            <p class="docs-component-desc">Second-level heading. Renders an h2 element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Heading text</td></tr>
                    <tr><td class="docs-prop-name">class</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">CSS classes</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <H2>Heading Level 2</H2>
            </div>
        </div>
    }
}

func renderH3(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-h3" data-comp="h3">
            <h1 class="docs-component-title">H3</h1>
            <p class="docs-component-desc">Third-level heading. Renders an h3 element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Heading text</td></tr>
                    <tr><td class="docs-prop-name">class</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">CSS classes</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <H3>Heading Level 3</H3>
            </div>
        </div>
    }
}

func renderText(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-text" data-comp="text">
            <h1 class="docs-component-title">Text</h1>
            <p class="docs-component-desc">Paragraph text. Renders a p element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Text content</td></tr>
                    <tr><td class="docs-prop-name">class</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">CSS classes</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Text>This is a paragraph of text with default styling.</Text>
            </div>
        </div>
    }
}

func renderLead(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-lead" data-comp="lead">
            <h1 class="docs-component-title">Lead</h1>
            <p class="docs-component-desc">Lead paragraph. Renders a p element with larger, lighter text.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Text content</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Lead>This is a lead paragraph used for introductory content.</Lead>
            </div>
        </div>
    }
}

func renderCaption(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-caption" data-comp="caption">
            <h1 class="docs-component-title">Caption</h1>
            <p class="docs-component-desc">Small caption text. Renders a small element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Caption text</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Caption>This is a small caption.</Caption>
            </div>
        </div>
    }
}

func renderCodeText(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-codetext" data-comp="codetext">
            <h1 class="docs-component-title">CodeText</h1>
            <p class="docs-component-desc">Inline code text. Renders a code element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Code content</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <p>Use <CodeText>npm install chemical</CodeText> to install.</p>
            </div>
        </div>
    }
}

func renderLink(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-link" data-comp="link">
            <h1 class="docs-component-title">Link</h1>
            <p class="docs-component-desc">Anchor link. Renders an a element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Link text</td></tr>
                    <tr><td class="docs-prop-name">href</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">#</td><td class="docs-prop-desc">URL</td></tr>
                    <tr><td class="docs-prop-name">target</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Link target</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Link href="#">Clickable Link</Link>
            </div>
        </div>
    }
}

func renderButton(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-button" data-comp="button">
            <h1 class="docs-component-title">Button</h1>
            <p class="docs-component-desc">Default button. Renders a button element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Button label</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                    <tr><td class="docs-prop-name">type</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">button</td><td class="docs-prop-desc">Button type</td></tr>
                    <tr><td class="docs-prop-name">disabled</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Disabled state</td></tr>
                    <tr><td class="docs-prop-name">class</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">CSS classes</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Button>Default Button</Button>
            </div>
        </div>
    }
}

func renderButtonPrimary(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-buttonprimary" data-comp="buttonprimary">
            <h1 class="docs-component-title">Button (Primary)</h1>
            <p class="docs-component-desc">Primary button variant with accent color.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Button label</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                    <tr><td class="docs-prop-name">disabled</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Disabled state</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <ButtonPrimary>Primary Button</ButtonPrimary>
            </div>
        </div>
    }
}

func renderButtonGhost(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-buttonghost" data-comp="buttonghost">
            <h1 class="docs-component-title">Button (Ghost)</h1>
            <p class="docs-component-desc">Ghost button with no background.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Button label</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <ButtonGhost>Ghost Button</ButtonGhost>
            </div>
        </div>
    }
}

func renderButtonOutline(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-buttonoutline" data-comp="buttonoutline">
            <h1 class="docs-component-title">Button (Outline)</h1>
            <p class="docs-component-desc">Outlined button with border only.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Button label</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <ButtonOutline>Outline Button</ButtonOutline>
            </div>
        </div>
    }
}

func renderButtonDanger(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-buttondanger" data-comp="buttondanger">
            <h1 class="docs-component-title">Button (Danger)</h1>
            <p class="docs-component-desc">Danger button with red accent.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Button label</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <ButtonDanger>Danger Button</ButtonDanger>
            </div>
        </div>
    }
}

func renderButtonSuccess(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-buttonsuccess" data-comp="buttonsuccess">
            <h1 class="docs-component-title">Button (Success)</h1>
            <p class="docs-component-desc">Success button with green accent.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Button label</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <ButtonSuccess>Success Button</ButtonSuccess>
            </div>
        </div>
    }
}

func renderButtonSm(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-buttonsm" data-comp="buttonsm">
            <h1 class="docs-component-title">Button (Small)</h1>
            <p class="docs-component-desc">Small button variant.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Button label</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <ButtonSm>Small Button</ButtonSm>
            </div>
        </div>
    }
}

func renderButtonLg(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-buttonlg" data-comp="buttonlg">
            <h1 class="docs-component-title">Button (Large)</h1>
            <p class="docs-component-desc">Large button variant.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Button label</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <ButtonLg>Large Button</ButtonLg>
            </div>
        </div>
    }
}

func renderIconButton(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-iconbutton" data-comp="iconbutton">
            <h1 class="docs-component-title">IconButton</h1>
            <p class="docs-component-desc">Circular icon button. Renders a button with an icon.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Icon content</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                    <tr><td class="docs-prop-name">label</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Accessible label</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <IconButton label="settings">&gt;</IconButton>
            </div>
        </div>
    }
}

func renderFab(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-fab" data-comp="fab">
            <h1 class="docs-component-title">Fab</h1>
            <p class="docs-component-desc">Floating action button. Renders a fixed-position circular button.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Button content</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Fab>+</Fab>
            </div>
        </div>
    }
}

func renderInput(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-input" data-comp="input">
            <h1 class="docs-component-title">Input</h1>
            <p class="docs-component-desc">Text input field. Renders an input element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Placeholder text</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input value</td></tr>
                    <tr><td class="docs-prop-name">type</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">text</td><td class="docs-prop-desc">Input type</td></tr>
                    <tr><td class="docs-prop-name">disabled</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Disabled state</td></tr>
                    <tr><td class="docs-prop-name">class</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">CSS classes</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Input placeholder="Enter text..." />
            </div>
        </div>
    }
}

func renderTextArea(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-textarea" data-comp="textarea">
            <h1 class="docs-component-title">TextArea</h1>
            <p class="docs-component-desc">Multi-line text input. Renders a textarea element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Placeholder text</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Textarea value</td></tr>
                    <tr><td class="docs-prop-name">rows</td><td class="docs-prop-type">int</td><td class="docs-prop-default">4</td><td class="docs-prop-desc">Visible rows</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <TextArea placeholder="Enter long text..." />
            </div>
        </div>
    }
}

func renderSelect(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-select" data-comp="select">
            <h1 class="docs-component-title">Select</h1>
            <p class="docs-component-desc">Dropdown select. Renders a select element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Option elements</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Selected value</td></tr>
                    <tr><td class="docs-prop-name">disabled</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Disabled state</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Select><option>Option 1</option><option>Option 2</option></Select>
            </div>
        </div>
    }
}

func renderInputFilled(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-inputfilled" data-comp="inputfilled">
            <h1 class="docs-component-title">Input (Filled)</h1>
            <p class="docs-component-desc">Input with filled background variant.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Placeholder text</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input value</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <InputFilled placeholder="Filled input..." />
            </div>
        </div>
    }
}

func renderInputSuccess(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-inputsuccess" data-comp="inputsuccess">
            <h1 class="docs-component-title">Input (Success)</h1>
            <p class="docs-component-desc">Input with success state styling.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Placeholder text</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input value</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <InputSuccess placeholder="Success input..." />
            </div>
        </div>
    }
}

func renderInputError(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-inputerror" data-comp="inputerror">
            <h1 class="docs-component-title">Input (Error)</h1>
            <p class="docs-component-desc">Input with error state styling.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Placeholder text</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input value</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <InputError placeholder="Error input..." />
            </div>
        </div>
    }
}

func renderInputGhost(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-inputghost" data-comp="inputghost">
            <h1 class="docs-component-title">Input (Ghost)</h1>
            <p class="docs-component-desc">Input with ghost (borderless) style.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Placeholder text</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input value</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <InputGhost placeholder="Ghost input..." />
            </div>
        </div>
    }
}

func renderInputSm(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-inputsm" data-comp="inputsm">
            <h1 class="docs-component-title">Input (Small)</h1>
            <p class="docs-component-desc">Small-sized input field.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Placeholder text</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input value</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <InputSm placeholder="Small input..." />
            </div>
        </div>
    }
}

func renderInputLg(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-inputlg" data-comp="inputlg">
            <h1 class="docs-component-title">Input (Large)</h1>
            <p class="docs-component-desc">Large-sized input field.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Placeholder text</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input value</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <InputLg placeholder="Large input..." />
            </div>
        </div>
    }
}

func renderInputDisabled(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-inputdisabled" data-comp="inputdisabled">
            <h1 class="docs-component-title">Input (Disabled)</h1>
            <p class="docs-component-desc">Disabled input field.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">placeholder</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Placeholder text</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input value</td></tr>
                    <tr><td class="docs-prop-name">disabled</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">true</td><td class="docs-prop-desc">Disabled state</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <InputDisabled placeholder="Disabled input..." />
            </div>
        </div>
    }
}

func renderField(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-field" data-comp="field">
            <h1 class="docs-component-title">Field</h1>
            <p class="docs-component-desc">Form field wrapper with label. Renders a labeled input group.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">label</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Field label</td></tr>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input element</td></tr>
                    <tr><td class="docs-prop-name">error</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Error message</td></tr>
                    <tr><td class="docs-prop-name">hint</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Hint text</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Field label="Username"><Input placeholder="Enter username..." /></Field>
            </div>
        </div>
    }
}

func renderCheckbox(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-checkbox" data-comp="checkbox">
            <h1 class="docs-component-title">Checkbox</h1>
            <p class="docs-component-desc">Checkbox input. Renders a checkbox with label.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Checkbox label</td></tr>
                    <tr><td class="docs-prop-name">checked</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Checked state</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                    <tr><td class="docs-prop-name">name</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input name</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Checkbox>Enable notifications</Checkbox>
            </div>
        </div>
    }
}

func renderRadio(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-radio" data-comp="radio">
            <h1 class="docs-component-title">Radio</h1>
            <p class="docs-component-desc">Radio button. Renders a radio input with label.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Radio label</td></tr>
                    <tr><td class="docs-prop-name">checked</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Checked state</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                    <tr><td class="docs-prop-name">name</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Input name</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Radio name="demo">Option A</Radio>
                <Radio name="demo">Option B</Radio>
            </div>
        </div>
    }
}

func renderSwitch(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-switch" data-comp="switch">
            <h1 class="docs-component-title">Switch</h1>
            <p class="docs-component-desc">Toggle switch. Renders a switch component.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Switch label</td></tr>
                    <tr><td class="docs-prop-name">checked</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Checked state</td></tr>
                    <tr><td class="docs-prop-name">onClick</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Click handler</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Switch>Dark mode</Switch>
            </div>
        </div>
    }
}

func renderProgress(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-progress" data-comp="progress">
            <h1 class="docs-component-title">Progress</h1>
            <p class="docs-component-desc">Progress bar. Renders a progress indicator.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">0</td><td class="docs-prop-desc">Progress percentage</td></tr>
                    <tr><td class="docs-prop-name">size</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">md</td><td class="docs-prop-desc">Progress bar size</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Progress value="60" />
            </div>
        </div>
    }
}

func renderAccordion(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-accordion" data-comp="accordion">
            <h1 class="docs-component-title">Accordion</h1>
            <p class="docs-component-desc">Accordion container. Wraps AccordionItem elements.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">AccordionItems</td></tr>
                    <tr><td class="docs-prop-name">multiple</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Allow multiple open</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Accordion>
                    <AccordionItem title="Section 1">Content one</AccordionItem>
                    <AccordionItem title="Section 2">Content two</AccordionItem>
                </Accordion>
            </div>
        </div>
    }
}

func renderAccordionItem(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-accordionitem" data-comp="accordionitem">
            <h1 class="docs-component-title">AccordionItem</h1>
            <p class="docs-component-desc">Single accordion panel with header and body.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">title</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Panel title</td></tr>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Panel content</td></tr>
                    <tr><td class="docs-prop-name">subtitle</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Panel subtitle</td></tr>
                    <tr><td class="docs-prop-name">open</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Open state</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <AccordionItem title="Accordion Item" subtitle="Subtitle">Content here</AccordionItem>
            </div>
        </div>
    }
}

func renderTabs(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-tabs" data-comp="tabs">
            <h1 class="docs-component-title">Tabs</h1>
            <p class="docs-component-desc">Tabbed interface. Renders a tab bar with panels.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Tab and panel elements</td></tr>
                    <tr><td class="docs-prop-name">activeTab</td><td class="docs-prop-type">int</td><td class="docs-prop-default">0</td><td class="docs-prop-desc">Active tab index</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Tabs>
                    <Tab label="Tab 1">Panel 1</Tab>
                    <Tab label="Tab 2">Panel 2</Tab>
                </Tabs>
            </div>
        </div>
    }
}

func renderPagination(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-pagination" data-comp="pagination">
            <h1 class="docs-component-title">Pagination</h1>
            <p class="docs-component-desc">Page navigation. Renders pagination controls.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">current</td><td class="docs-prop-type">int</td><td class="docs-prop-default">1</td><td class="docs-prop-desc">Current page</td></tr>
                    <tr><td class="docs-prop-name">total</td><td class="docs-prop-type">int</td><td class="docs-prop-default">1</td><td class="docs-prop-desc">Total pages</td></tr>
                    <tr><td class="docs-prop-name">onChange</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Page change handler</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Pagination current="1" total="5" />
            </div>
        </div>
    }
}

func renderList(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-list" data-comp="list">
            <h1 class="docs-component-title">List</h1>
            <p class="docs-component-desc">List container. Renders a ul/ol element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">List items</td></tr>
                    <tr><td class="docs-prop-name">ordered</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Ordered list</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <List>
                    <ListItem>Item one</ListItem>
                    <ListItem>Item two</ListItem>
                    <ListItem>Item three</ListItem>
                </List>
            </div>
        </div>
    }
}

func renderTable(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-table" data-comp="table">
            <h1 class="docs-component-title">Table</h1>
            <p class="docs-component-desc">Data table. Renders a table element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Table content</td></tr>
                    <tr><td class="docs-prop-name">striped</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Striped rows</td></tr>
                    <tr><td class="docs-prop-name">hoverable</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Hover effect</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Table>
                    <thead><tr><th>Name</th><th>Role</th></tr></thead>
                    <tbody><tr><td>Alice</td><td>Admin</td></tr></tbody>
                </Table>
            </div>
        </div>
    }
}

func renderCard(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-card" data-comp="card">
            <h1 class="docs-component-title">Card</h1>
            <p class="docs-component-desc">Content card. Renders a card container.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Card content</td></tr>
                    <tr><td class="docs-prop-name">title</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Card title</td></tr>
                    <tr><td class="docs-prop-name">subtitle</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Card subtitle</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Card title="Card Title" subtitle="Card subtitle">This is the card body content.</Card>
            </div>
        </div>
    }
}

func renderStatCard(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-statcard" data-comp="statcard">
            <h1 class="docs-component-title">StatCard</h1>
            <p class="docs-component-desc">Statistics card. Renders a card with a label and value.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">label</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Statistic label</td></tr>
                    <tr><td class="docs-prop-name">value</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Statistic value</td></tr>
                    <tr><td class="docs-prop-name">icon</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Icon name</td></tr>
                    <tr><td class="docs-prop-name">trend</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Trend indicator</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <StatCard label="Users" value="1,234" trend="+12%" />
            </div>
        </div>
    }
}

func renderPaper(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-paper" data-comp="paper">
            <h1 class="docs-component-title">Paper</h1>
            <p class="docs-component-desc">Surface container. Renders a div with elevation.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Content</td></tr>
                    <tr><td class="docs-prop-name">elevation</td><td class="docs-prop-type">int</td><td class="docs-prop-default">1</td><td class="docs-prop-desc">Shadow depth</td></tr>
                    <tr><td class="docs-prop-name">rounded</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">md</td><td class="docs-prop-desc">Border radius</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Paper>This is a paper surface with elevation.</Paper>
            </div>
        </div>
    }
}

func renderAppBar(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-appbar" data-comp="appbar">
            <h1 class="docs-component-title">AppBar</h1>
            <p class="docs-component-desc">Top app bar. Renders a header navigation bar.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">App bar content</td></tr>
                    <tr><td class="docs-prop-name">title</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">App bar title</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <div style="position:relative;height:64px;border:1px solid var(--chx-border);border-radius:8px;overflow:hidden;">
                    <AppBar title="Application" />
                </div>
            </div>
        </div>
    }
}

func renderDrawer(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-drawer" data-comp="drawer">
            <h1 class="docs-component-title">Drawer</h1>
            <p class="docs-component-desc">Side drawer. Renders a slide-out panel.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Drawer content</td></tr>
                    <tr><td class="docs-prop-name">open</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Open state</td></tr>
                    <tr><td class="docs-prop-name">side</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">left</td><td class="docs-prop-desc">Drawer side</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Drawer open="false">Drawer content</Drawer>
            </div>
        </div>
    }
}

func renderMenu(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-menu" data-comp="menu">
            <h1 class="docs-component-title">Menu</h1>
            <p class="docs-component-desc">Dropdown menu. Renders a menu list.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Menu items</td></tr>
                    <tr><td class="docs-prop-name">open</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Open state</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <div style="position:relative;display:inline-block;">
                    <Menu open="true">
                        <MenuItem>Profile</MenuItem>
                        <MenuItem>Settings</MenuItem>
                        <MenuItem divider>Logout</MenuItem>
                    </Menu>
                </div>
            </div>
        </div>
    }
}

func renderPopover(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-popover" data-comp="popover">
            <h1 class="docs-component-title">Popover</h1>
            <p class="docs-component-desc">Popover overlay. Renders a positioned popup.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Popover content</td></tr>
                    <tr><td class="docs-prop-name">open</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Open state</td></tr>
                    <tr><td class="docs-prop-name">position</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">bottom</td><td class="docs-prop-desc">Popover position</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <div style="position:relative;display:inline-block;">
                    <Popover open="true" position="bottom">Popover content</Popover>
                </div>
            </div>
        </div>
    }
}

func renderDialog(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-dialog" data-comp="dialog">
            <h1 class="docs-component-title">Dialog</h1>
            <p class="docs-component-desc">Modal dialog. Renders a centered modal.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Dialog content</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <div style="position:relative;height:200px;border:1px solid var(--chx-border);border-radius:8px;overflow:hidden;">
                    <Dialog style="position:absolute;">
                        <DialogBackdrop />
                        <DialogContent>
                            <DialogHeader>
                                <span style="font-weight:700;">Dialog Title</span>
                            </DialogHeader>
                            <p style="margin:0;color:var(--chx-text-main);">This is a dialog with some content.</p>
                            <DialogActions>
                                <Button>Cancel</Button>
                                <ButtonPrimary>Confirm</ButtonPrimary>
                            </DialogActions>
                        </DialogContent>
                    </Dialog>
                </div>
            </div>
        </div>
    }
}

func renderSnackbar(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-snackbar" data-comp="snackbar">
            <h1 class="docs-component-title">Snackbar</h1>
            <p class="docs-component-desc">Toast notification. Renders a snackbar message.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Snackbar message</td></tr>
                    <tr><td class="docs-prop-name">open</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">true</td><td class="docs-prop-desc">Visible state</td></tr>
                    <tr><td class="docs-prop-name">variant</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">info</td><td class="docs-prop-desc">Snackbar variant</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Snackbar>Item saved successfully!</Snackbar>
            </div>
        </div>
    }
}

func renderTooltip(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-tooltip" data-comp="tooltip">
            <h1 class="docs-component-title">Tooltip</h1>
            <p class="docs-component-desc">Tooltip overlay. Renders a hover tooltip.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Trigger element</td></tr>
                    <tr><td class="docs-prop-name">text</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Tooltip text</td></tr>
                    <tr><td class="docs-prop-name">position</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">top</td><td class="docs-prop-desc">Tooltip position</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Tooltip text="This is a tooltip"><Button>Hover me</Button></Tooltip>
            </div>
        </div>
    }
}

func renderBottomBar(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-bottombar" data-comp="bottombar">
            <h1 class="docs-component-title">BottomBar</h1>
            <p class="docs-component-desc">Bottom navigation bar. Renders a bottom bar.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Navigation items</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <div style="position:relative;border:1px solid var(--chx-border);border-radius:8px;overflow:hidden;">
                    <BottomBar>
                        <IconButton>H</IconButton>
                        <IconButton>S</IconButton>
                        <Fab>New</Fab>
                        <IconButton>P</IconButton>
                    </BottomBar>
                </div>
            </div>
        </div>
    }
}

func renderEmptyState(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-emptystate" data-comp="emptystate">
            <h1 class="docs-component-title">EmptyState</h1>
            <p class="docs-component-desc">Empty state placeholder. Renders an empty state message.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">title</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Empty state title</td></tr>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Description text</td></tr>
                    <tr><td class="docs-prop-name">icon</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Icon name</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <EmptyState title="No results found" icon="search">Try adjusting your search criteria.</EmptyState>
            </div>
        </div>
    }
}

func renderAlert(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-alert" data-comp="alert">
            <h1 class="docs-component-title">Alert</h1>
            <p class="docs-component-desc">Default alert. Renders an alert banner.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Alert message</td></tr>
                    <tr><td class="docs-prop-name">icon</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Icon name</td></tr>
                    <tr><td class="docs-prop-name">dismissible</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Show dismiss button</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Alert>This is an informational alert.</Alert>
            </div>
        </div>
    }
}

func renderAlertAccent(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-alertaccent" data-comp="alertaccent">
            <h1 class="docs-component-title">Alert (Accent)</h1>
            <p class="docs-component-desc">Alert with accent border styling.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Alert message</td></tr>
                    <tr><td class="docs-prop-name">icon</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Icon name</td></tr>
                    <tr><td class="docs-prop-name">dismissible</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Show dismiss button</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <AlertAccent>This is an accent alert with left border.</AlertAccent>
            </div>
        </div>
    }
}

func renderAlertSuccess(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-alertsuccess" data-comp="alertsuccess">
            <h1 class="docs-component-title">Alert (Success)</h1>
            <p class="docs-component-desc">Success alert with green styling.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Alert message</td></tr>
                    <tr><td class="docs-prop-name">icon</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Icon name</td></tr>
                    <tr><td class="docs-prop-name">dismissible</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Show dismiss button</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <AlertSuccess>Operation completed successfully!</AlertSuccess>
            </div>
        </div>
    }
}

func renderAlertError(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-alerterror" data-comp="alerterror">
            <h1 class="docs-component-title">Alert (Error)</h1>
            <p class="docs-component-desc">Error alert with red styling.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Alert message</td></tr>
                    <tr><td class="docs-prop-name">icon</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Icon name</td></tr>
                    <tr><td class="docs-prop-name">dismissible</td><td class="docs-prop-type">bool</td><td class="docs-prop-default">false</td><td class="docs-prop-desc">Show dismiss button</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <AlertError>Something went wrong. Please try again.</AlertError>
            </div>
        </div>
    }
}

func renderBadge(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-badge" data-comp="badge">
            <h1 class="docs-component-title">Badge</h1>
            <p class="docs-component-desc">Notification badge. Renders a small badge.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Badge content</td></tr>
                    <tr><td class="docs-prop-name">variant</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">default</td><td class="docs-prop-desc">Badge variant</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Badge>New</Badge>
            </div>
        </div>
    }
}

func renderChip(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-chip" data-comp="chip">
            <h1 class="docs-component-title">Chip</h1>
            <p class="docs-component-desc">Chip/tag element. Renders a compact chip.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Chip label</td></tr>
                    <tr><td class="docs-prop-name">onClose</td><td class="docs-prop-type">function</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Close handler</td></tr>
                    <tr><td class="docs-prop-name">variant</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">filled</td><td class="docs-prop-desc">Chip variant</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Chip>React</Chip>
                <Chip>TypeScript</Chip>
            </div>
        </div>
    }
}

func renderAvatar(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-avatar" data-comp="avatar">
            <h1 class="docs-component-title">Avatar</h1>
            <p class="docs-component-desc">User avatar. Renders a circular avatar.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Initials or image</td></tr>
                    <tr><td class="docs-prop-name">src</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Image source</td></tr>
                    <tr><td class="docs-prop-name">size</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">md</td><td class="docs-prop-desc">Avatar size</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Avatar>JD</Avatar>
            </div>
        </div>
    }
}

func renderKbd(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-kbd" data-comp="kbd">
            <h1 class="docs-component-title">Kbd</h1>
            <p class="docs-component-desc">Keyboard key. Renders a kbd element.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">children</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Key label</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Kbd>Ctrl</Kbd> + <Kbd>C</Kbd>
            </div>
        </div>
    }
}

func renderDivider(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-divider" data-comp="divider">
            <h1 class="docs-component-title">Divider</h1>
            <p class="docs-component-desc">Visual divider. Renders a horizontal rule.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">-</td><td class="docs-prop-type">-</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">No props required</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Divider />
            </div>
        </div>
    }
}

func renderIcon(page : &mut HtmlPage) {
    #html {
        <div class="docs-section" id="docs-icon" data-comp="icon">
            <h1 class="docs-component-title">Icon</h1>
            <p class="docs-component-desc">Icon element. Renders an SVG icon.</p>
            <table class="docs-props-table">
                <thead><tr><th>Prop</th><th>Type</th><th>Default</th><th>Description</th></tr></thead>
                <tbody>
                    <tr><td class="docs-prop-name">name</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">-</td><td class="docs-prop-desc">Icon identifier</td></tr>
                    <tr><td class="docs-prop-name">size</td><td class="docs-prop-type">*char</td><td class="docs-prop-default">md</td><td class="docs-prop-desc">Icon size</td></tr>
                </tbody>
            </table>
            <div class="docs-demo-box">
                <div class="docs-demo-label">Live Demo</div>
                <Icon name="home" />
            </div>
        </div>
    }
}

func SetupComponentNav(page : &mut HtmlPage) {
    #html {
        <script>{"""
            (function() {
                var sections = document.querySelectorAll('.docs-section');
                var sidebarItems = document.querySelectorAll('.docs-sidebar-item');
                var currentHash = window.location.hash.slice(1) || 'h1';
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
                    showComponent(window.location.hash.slice(1) || 'h1');
                });
            }());
        """}</script>
    }
}
