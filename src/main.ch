public func main() : int {
    // 1. Home Page
    var home = HtmlPage()
    HomePage(&mut home)
    home.writeToDirectory("output", "index", "", "chx-default dark")
    
    // 2. Try Page (hidden - no public nav link)
    var tryPage = HtmlPage()
    TryPage(&mut tryPage)
    tryPage.writeToDirectory("output", "try", "", "chx-default dark")
    // printf("%s\n", components.toString().data());

    // 3. Components Documentation Page
    var compPage = HtmlPage()
    ComponentsDocPage(&mut compPage)
    compPage.writeToDirectory("output", "components", "", "chx-default dark")

    // 4. Integration Page
    var integration = HtmlPage()
    IntegrationPage(&mut integration)
    integration.writeToDirectory("output", "integration", "", "chx-default dark")
    // printf("%s\n", integration.toString().data());

    // 5. Demo Index
    var demo = HtmlPage()
    DemoPage(&mut demo)
    demo.writeToDirectory("output", "demo", "", "chx-default dark")

    // 6. Demo Studio Page
    var demoStudio = HtmlPage()
    DemoStudioPage(&mut demoStudio)
    demoStudio.writeToDirectory("output", "demo-studio", "", "chx-default dark")

    // 7. Demo Clinic Page
    var demoClinic = HtmlPage()
    DemoClinicPage(&mut demoClinic)
    demoClinic.writeToDirectory("output", "demo-clinic", "", "chx-default dark")

    // 8. Demo Shop Page
    var demoShop = HtmlPage()
    DemoShopPage(&mut demoShop)
    demoShop.writeToDirectory("output", "demo-shop", "", "chx-default dark")

    // 9. Demo Retreat Page
    var demoRetreat = HtmlPage()
    DemoRetreatPage(&mut demoRetreat)
    demoRetreat.writeToDirectory("output", "demo-retreat", "", "chx-default dark")

    // 10. Demo Todo App Page
    var demoTodo = HtmlPage()
    DemoTodoPage(&mut demoTodo)
    demoTodo.writeToDirectory("output", "demo-todo", "", "chx-default dark")
    
    // 11. Markdown Page
    var mdP = HtmlPage()
    MarkdownPage(&mut mdP)
    mdP.writeToDirectory("output", "markdown", "", "chx-default dark")

    return 0
}
