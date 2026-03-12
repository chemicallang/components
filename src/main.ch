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
    
    // 4. Markdown Page
    var mdP = HtmlPage()
    MarkdownPage(mdP)
    mdP.writeToDirectory("output", "markdown", "", "chx-default dark")

    return 0
}
