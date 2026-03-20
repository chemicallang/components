public func main() : int {
    // 1. Home Page
    var home = HtmlPage()
    HomePage(home)
    home.writeToDirectory("output", "index", "", "chx-default dark")
    
    // 2. Components Page
    var components = HtmlPage()
    ComponentsPage(components)
    components.writeToDirectory("output", "components", "", "chx-default dark")
    // printf("%s\n", components.toString().data());

    // 3. Integration Page
    var integration = HtmlPage()
    IntegrationPage(integration)
    integration.writeToDirectory("output", "integration", "", "chx-default dark")
    // printf("%s\n", integration.toString().data());

    // 4. Demo Index
    var demo = HtmlPage()
    DemoPage(demo)
    demo.writeToDirectory("output", "demo", "", "chx-default dark")

    // 5. Demo Studio Page
    var demoStudio = HtmlPage()
    DemoStudioPage(demoStudio)
    demoStudio.writeToDirectory("output", "demo-studio", "", "chx-default dark")

    // 6. Demo Clinic Page
    var demoClinic = HtmlPage()
    DemoClinicPage(demoClinic)
    demoClinic.writeToDirectory("output", "demo-clinic", "", "chx-default dark")

    // 7. Demo Shop Page
    var demoShop = HtmlPage()
    DemoShopPage(demoShop)
    demoShop.writeToDirectory("output", "demo-shop", "", "chx-default dark")

    // 8. Demo Retreat Page
    var demoRetreat = HtmlPage()
    DemoRetreatPage(demoRetreat)
    demoRetreat.writeToDirectory("output", "demo-retreat", "", "chx-default dark")
    
    // 9. Markdown Page
    var mdP = HtmlPage()
    MarkdownPage(mdP)
    mdP.writeToDirectory("output", "markdown", "", "chx-default dark")

    return 0
}
