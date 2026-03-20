#universal ClickableButton(props) {
    var lambda = () => { alert("you clicked") }
    return <ButtonPrimary onClick={lambda}>Clickable</ButtonPrimary>
}

func ComponentsPage(page : &mut HtmlPage) {
    page.appendTitle("Components - Chemical")
    page.defaultPrepare()
    page.defaultUniversalSetup()
    page.injectDefaultComponentsTheme()
    GlobalStyles(page)
    GlassHeader(page, "components")

    #css {
        .page-header { padding: 10rem 0 3rem; display: flex; justify-content: space-between; align-items: center; gap: 2rem; }
        .page-header h1 { font-size: 3.5rem; margin: 0; letter-spacing: -0.02em; }
        .page-header p { max-width: 620px; color: var(--chx-text-muted); margin: 0.75rem 0 0 0; }
        .theme-toggle { display: inline-flex; align-items: center; gap: 0.6rem; padding: 0.7rem 1rem; border-radius: 999px; border: 1px solid var(--chx-border); background: var(--chx-surface); color: var(--chx-text-main); cursor: pointer; }

        .section { margin-top: 3rem; }
        .section-title { font-size: 1.4rem; margin-bottom: 1rem; }
        .demo-row { display: flex; flex-wrap: wrap; gap: 1rem; }
        .demo-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1.5rem; }
        .demo-card { padding: 1.25rem; border: 1px solid var(--chx-border); border-radius: var(--chx-radius); background: var(--chx-surface); }
        .demo-stack { display: grid; gap: 0.9rem; }
        .input-row { display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem; }
        .pill-row { display: flex; flex-wrap: wrap; gap: 0.7rem; }
        .subtle { color: var(--chx-text-muted); font-size: 0.95rem; }
    }

    #html {
        <div class="container">
            <div class="page-header">
                <div>
                    <h1>Component Library</h1>
                    <p>High-fidelity, universal primitives designed for speed, SSR, and seamless use across Chemical, React, Preact, and Solid.</p>
                </div>
                <button class="theme-toggle" id="theme-toggle">Toggle Theme</button>
            </div>

            <div class="section">
                <div class="section-title">Buttons</div>
                <div class="demo-row">
                    <ButtonPrimary>Primary</ButtonPrimary>
                    <ClickableButton />
                    <Button>Default</Button>
                    <ButtonOutline>Outline</ButtonOutline>
                    <ButtonGhost>Ghost</ButtonGhost>
                    <ButtonDanger>Danger</ButtonDanger>
                    <ButtonSm>Small</ButtonSm>
                    <ButtonLg>Large</ButtonLg>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Inputs</div>
                <div class="input-row">
                    <div class="demo-stack">
                        <div class="subtle">Text input</div>
                        <Input placeholder="Search components..." />
                    </div>
                    <div class="demo-stack">
                        <div class="subtle">Select</div>
                        <Select>
                            <option>Default</option>
                            <option>Secondary</option>
                            <option>Danger</option>
                        </Select>
                    </div>
                </div>
                <div class="demo-stack" style="margin-top:1rem;">
                    <div class="subtle">Text area</div>
                    <TextArea placeholder="Leave a note..."></TextArea>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Cards</div>
                <div class="demo-grid">
                    <Card>
                        <CardHeader>
                            <CardTitle>Launch Status</CardTitle>
                            <BadgeAccent>Beta</BadgeAccent>
                        </CardHeader>
                        <CardBody>
                            <p class="subtle">Universal components ship with SSR + hydration out of the box.</p>
                        </CardBody>
                        <CardFooter>
                            <ButtonPrimary>Enable</ButtonPrimary>
                            <ButtonGhost>Later</ButtonGhost>
                        </CardFooter>
                    </Card>
                    <Card>
                        <CardHeader>
                            <CardTitle>Design Tokens</CardTitle>
                            <BadgeSuccess>Stable</BadgeSuccess>
                        </CardHeader>
                        <CardBody>
                            <p class="subtle">Light and dark mode are defined at the theme layer.</p>
                        </CardBody>
                        <CardFooter>
                            <Chip>chx-default</Chip>
                            <Chip>chx-accent</Chip>
                        </CardFooter>
                    </Card>
                    <Card>
                        <CardHeader>
                            <CardTitle>Build Speed</CardTitle>
                            <Badge>Universal</Badge>
                        </CardHeader>
                        <CardBody>
                            <p class="subtle">Small JS output, fast hydration, and clean markup.</p>
                        </CardBody>
                        <CardFooter>
                            <ButtonOutline>Details</ButtonOutline>
                        </CardFooter>
                    </Card>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Alerts</div>
                <div class="demo-stack">
                    <AlertAccent>
                        <div>
                            <AlertTitle>Heads up</AlertTitle>
                            <AlertBody>These components are designed for SSR-first delivery.</AlertBody>
                        </div>
                    </AlertAccent>
                    <AlertSuccess>
                        <div>
                            <AlertTitle>Success</AlertTitle>
                            <AlertBody>Universal components are working across all frameworks.</AlertBody>
                        </div>
                    </AlertSuccess>
                    <AlertError>
                        <div>
                            <AlertTitle>Error</AlertTitle>
                            <AlertBody>Make sure to pass required props when using nested components.</AlertBody>
                        </div>
                    </AlertError>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Badges, Chips, Avatars</div>
                <div class="demo-row">
                    <Badge>Neutral</Badge>
                    <BadgeAccent>Accent</BadgeAccent>
                    <BadgeSuccess>Success</BadgeSuccess>
                    <BadgeError>Error</BadgeError>
                    <Chip>Edge</Chip>
                    <Chip>Core</Chip>
                    <Avatar>CH</Avatar>
                    <AvatarSm>CU</AvatarSm>
                    <AvatarLg>UI</AvatarLg>
                    <Kbd>⌘K</Kbd>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Toggles</div>
                <div class="demo-row">
                    <Checkbox checked={true}>Enable SSR</Checkbox>
                    <Switch checked={true}>Auto-hydrate</Switch>
                </div>
            </div>

        </div>
    }

    SocialFooter(page)
    SetupThemeScript(page)
}
