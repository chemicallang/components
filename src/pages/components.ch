func ComponentsPage(page : &mut HtmlPage) {
    page.appendTitle("Components - Chemical")
    page.defaultUniversalSetup()
    page.injectDefaultComponentsTheme()
    GlobalStyles(page)
    GlassHeader(page, "components")

    #html {
        <div class="container">s
            <div class="page-header">
                <h1>Tri-Framework Sync</h1>
                <p>Chemical's component bridge allows you to use multiple frameworks simultaneously, sharing logic and state across the divide.</p>
            </div>
            <Button class="my_ele">Click Me!</Button>
        </div>
    }
    SocialFooter(page)
}