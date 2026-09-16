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

    // 4. Markdown Page
    var mdP = HtmlPage()
    MarkdownPage(&mut mdP)
    mdP.writeToDirectory("output", "markdown", "", "chx-default dark")

    return 0
}
