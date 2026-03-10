public func main() : int {
    // 1. Home Page
    var home = HtmlPage()
    HomePage(home)
    home.writeToDirectory("output", "index")
    
    // 2. Components Page
    var components = HtmlPage()
    ComponentsPage(components)
    components.writeToDirectory("output", "components")
    // printf("%s\n", components.toString().data());

    // 3. Integration Page
    var integration = HtmlPage()
    IntegrationPage(components)
    integration.writeToDirectory("output", "integration")
    // printf("%s\n", integration.toString().data());
    
    // 4. Markdown Page
    var mdP = HtmlPage()
    MarkdownPage(mdP)
    mdP.writeToDirectory("output", "markdown")
    
    // 5. Layout Page
    var layout = HtmlPage()
    DashboardPage(layout)
    layout.writeToDirectory("output", "layout")
    
    return 0
}
