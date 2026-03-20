#universal ClickableButton(props) {
    var lambda = () => { alert("you clicked") }
    return <ButtonPrimary onClick={lambda}>Clickable</ButtonPrimary>
}

#universal DialogShowcase(props) {
    state open = true
    return <div class="demo-stack">
        <div class="demo-row">
            <ButtonPrimary onClick={() => open = true} style={open ? "display:none;" : ""}>Open dialog</ButtonPrimary>
        </div>
        <Dialog style={open ? "" : "display:none;"}>
            <DialogBackdrop onClick={() => open = false}></DialogBackdrop>
            <DialogContent>
                <DialogHeader>
                    <H3>Interactive Dialog</H3>
                    <IconButton onClick={() => open = false}><Icon>x</Icon></IconButton>
                </DialogHeader>
                <Text style="margin-top:0.75rem;">This dialog is centered with a backdrop layer and can be dismissed through its controls.</Text>
                <DialogActions>
                    <ButtonPrimary onClick={() => open = false}>Confirm</ButtonPrimary>
                    <ButtonGhost onClick={() => open = false}>Close</ButtonGhost>
                </DialogActions>
            </DialogContent>
        </Dialog>
    </div>
}

#universal ToggleShowcase(props) {
    state enabled = true
    state autoHydrate = true
    state density = 0
    return <div class="demo-stack">
        <div class="demo-row">
            <Checkbox checked={enabled} onClick={() => enabled = !enabled}>Enable SSR</Checkbox>
            <Switch checked={autoHydrate} onClick={() => autoHydrate = !autoHydrate}>Auto-hydrate</Switch>
            <Radio checked={density == 0} name="density" onClick={() => density = 0}>Comfortable</Radio>
            <Radio checked={density == 1} name="density" onClick={() => density = 1}>Compact</Radio>
        </div>
        <Caption>SSR: {enabled ? "enabled" : "disabled"} | Hydration: {autoHydrate ? "automatic" : "manual"} | Density: {density == 0 ? "comfortable" : "compact"}</Caption>
    </div>
}

#universal TabsShowcase(props) {
    state active = 0
    return <Tabs>
        <TabList>
            <Tab onClick={() => active = 0} style={ active == 0 ? "background:var(--chx-primary);color:var(--chx-primary-fg);" : ""}>Overview</Tab>
            <Tab onClick={() => active = 1} style={ active == 1 ? "background:var(--chx-primary);color:var(--chx-primary-fg);" : ""}>Tokens</Tab>
            <Tab onClick={() => active = 2} style={ active == 2 ? "background:var(--chx-primary);color:var(--chx-primary-fg);" : ""}>Usage</Tab>
        </TabList>
        <TabPanel style={active == 0 ? "" : "display:none;"}>
            Overview tab content is interactive and swaps instantly on click.
        </TabPanel>
        <TabPanel style={active == 1 ? "" : "display:none;"}>
            Tokens tab content proves stateful tab switching works under hydration.
        </TabPanel>
        <TabPanel style={active == 2 ? "" : "display:none;"}>
            Usage tab content gives the demo page a real click-driven component example.
        </TabPanel>
    </Tabs>
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
        .mobile-preview { width: 100%; max-width: 420px; margin-top: 1rem; padding: 1rem; border: 1px dashed var(--chx-border); border-radius: 24px; background: linear-gradient(180deg, rgba(59, 130, 246, 0.05), transparent 60%), var(--chx-surface); }
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
                    <ButtonSuccess>Success</ButtonSuccess>
                    <ButtonDanger>Danger</ButtonDanger>
                    <ButtonSm>Small</ButtonSm>
                    <ButtonLg>Large</ButtonLg>
                    <IconButton><Icon>+</Icon></IconButton>
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
                <div class="input-row" style="margin-top:1rem;">
                    <Field>
                        <FieldLabel>Project name</FieldLabel>
                        <InputLg placeholder="Universal components" />
                        <FieldHint>Large field for primary content entry.</FieldHint>
                    </Field>
                    <Field>
                        <FieldLabel>Search package</FieldLabel>
                        <InputSm placeholder="button, input, dialog..." />
                        <FieldHint>Compact field for dense toolbars and inspectors.</FieldHint>
                    </Field>
                </div>
                <div class="input-row" style="margin-top:1rem;">
                    <InputFilled placeholder="Filled field" />
                    <InputGhost placeholder="Ghost field" />
                </div>
                <div class="input-row" style="margin-top:1rem;">
                    <InputSuccess value="Valid input" />
                    <InputError value="Needs attention" />
                </div>
                <div class="input-row" style="margin-top:1rem;">
                    <InputDisabled value="Disabled preview" />
                    <Select>
                        <option>Outline field</option>
                        <option>Success state</option>
                        <option>Disabled</option>
                    </Select>
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
                    <ChipAccent>Accent</ChipAccent>
                    <ChipSuccess>Success</ChipSuccess>
                    <ChipError>Error</ChipError>
                    <Avatar>CH</Avatar>
                    <AvatarSm>CU</AvatarSm>
                    <AvatarLg>UI</AvatarLg>
                    <IconButton><Icon>+</Icon></IconButton>
                    <Fab><Icon>+</Icon>New</Fab>
                    <Kbd>cmd+k</Kbd>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Toggles</div>
                <ToggleShowcase />
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Typography, Links, Icons</div>
                <div class="demo-stack">
                    <H2>Build Interfaces With SSR-First Primitives</H2>
                    <Lead>These typography and navigation primitives ship directly from the universal components package.</Lead>
                    <Text>A presentational typography set, navigation links, and icon primitives are available in the same package.</Text>
                    <div class="demo-row">
                        <CodeText>&lt;CodeText&gt;</CodeText>
                        <Link href="#">Link</Link>
                        <Kbd>cmd+k</Kbd>
                    </div>
                    <div class="demo-row">
                        <Icon>?</Icon>
                        <Icon>i</Icon>
                        <Caption>Small helper copy for supporting metadata.</Caption>
                    </div>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Paper, App Bar, Drawer, Menu</div>
                <div class="demo-grid">
                    <Paper>
                        <AppBar>
                            <H3>Workspace</H3>
                            <ButtonSm>Publish</ButtonSm>
                        </AppBar>
                        <Text style="margin-top:1rem;">Reusable surfaces now cover document-like shells and navigation containers.</Text>
                    </Paper>
                    <Drawer>
                        <H3>Drawer</H3>
                        <Text>Use drawers for grouped navigation or settings clusters.</Text>
                        <Menu>
                            <MenuItem href="#">Profile</MenuItem>
                            <MenuItem href="#">Billing</MenuItem>
                            <MenuItem href="#">API Keys</MenuItem>
                        </Menu>
                    </Drawer>
                    <Popover>
                        <Caption>Popover</Caption>
                        <Text>Static SSR-friendly shell for compact contextual content.</Text>
                        <Tooltip>Tooltip copy can also be rendered inline.</Tooltip>
                    </Popover>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Stats, Empty States, Mobile</div>
                <div class="demo-grid">
                    <StatCard>
                        <Caption>Requests</Caption>
                        <H2>18.4k</H2>
                        <ChipSuccess>+12%</ChipSuccess>
                    </StatCard>
                    <EmptyState>
                        <H3>No deployments yet</H3>
                        <Text>Create a pipeline to start preview builds and production releases.</Text>
                        <ButtonPrimary>Create deployment</ButtonPrimary>
                    </EmptyState>
                    <div class="mobile-preview">
                        <Caption>Bottom Bar</Caption>
                        <BottomBar style="margin-top:0.75rem;">
                            <IconButton><Icon>H</Icon></IconButton>
                            <IconButton><Icon>S</Icon></IconButton>
                            <Fab><Icon>+</Icon>New</Fab>
                            <IconButton><Icon>P</Icon></IconButton>
                            <IconButton><Icon>U</Icon></IconButton>
                        </BottomBar>
                    </div>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Mobile Actions</div>
                <div class="demo-row">
                    <IconButton><Icon>+</Icon></IconButton>
                    <IconButton><Icon>i</Icon></IconButton>
                    <Fab><Icon>+</Icon>Create</Fab>
                    <Fab><Icon>?</Icon>Help</Fab>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Feedback</div>
                <div class="demo-stack">
                    <div class="demo-row">
                        <Snackbar>
                            <BadgeSuccess>Saved</BadgeSuccess>
                            <span>Changes were written to disk.</span>
                        </Snackbar>
                        <Progress value="68"></Progress>
                    </div>
                    <DialogShowcase />
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Accordion, Tabs, Pagination</div>
                <div class="demo-stack">
                    <AccordionItem open={true} title="How does SSR-first hydration help here?" subtitle="Click anywhere on the summary row to toggle the details.">Markup ships complete on first response, then universal bindings attach without rebuilding the whole subtree.</AccordionItem>
                    <AccordionItem title="Can these primitives power mobile-compatible web apps?" subtitle="Floating actions and bottom navigation are part of the library now.">Yes. The component set now includes compact actions, icon buttons, floating action buttons, and a bottom bar pattern.</AccordionItem>
                    <TabsShowcase />
                    <Pagination>
                        <PageItem href="#">Prev</PageItem>
                        <PageItemActive href="#">1</PageItemActive>
                        <PageItem href="#">2</PageItem>
                        <PageItem href="#">3</PageItem>
                        <PageItem href="#">Next</PageItem>
                    </Pagination>
                </div>
            </div>

            <Divider />

            <div class="section">
                <div class="section-title">Table and List</div>
                <div class="demo-grid">
                    <Paper>
                        <Caption>Table</Caption>
                        <Table style="margin-top:0.75rem;">
                            <thead>
                                <tr>
                                    <TableHeadCell>Package</TableHeadCell>
                                    <TableHeadCell>Status</TableHeadCell>
                                    <TableHeadCell>SSR</TableHeadCell>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <TableCell>Buttons</TableCell>
                                    <TableCell>Ready</TableCell>
                                    <TableCell>Yes</TableCell>
                                </tr>
                                <tr>
                                    <TableCell>Toggles</TableCell>
                                    <TableCell>Updated</TableCell>
                                    <TableCell>Yes</TableCell>
                                </tr>
                            </tbody>
                        </Table>
                    </Paper>
                    <Paper>
                        <Caption>List</Caption>
                        <List style="margin-top:0.75rem;">
                            <ListItem>Universal components render HTML first.</ListItem>
                            <ListItem>Hydration preserves SSR markup instead of rebuilding the tree.</ListItem>
                            <ListItem>Interactive demos now cover toggles, tabs, and dialogs.</ListItem>
                        </List>
                    </Paper>
                </div>
            </div>

        </div>
    }

    SocialFooter(page)
    SetupThemeScript(page)
}
