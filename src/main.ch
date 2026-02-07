func MarkdownArea(page : &mut HtmlPage) {
#md
#### Markdown Area
This is a markdown area, where writing markdown is possible
#endmd
}

#react ReactCounter(props) {
    var [count, setCount] = useState(0)
    return <button onClick={() => { setCount((c) => c + 1) }} className={props.className}>React Count : {count}</div>
}

#preact PreactCounter(props) {
    var [count, setCount] = useState(0)
    return <button onClick={() => { setCount((c) => c + 1) }} className={props.className}>Preact Count : {count}</div>
}

#solid SolidCounter(props) {
    var [count, setCount] = createSignal(0)
    return <button onClick={() => { setCount((c) => c + 1) }} className={props.className}>Signal Count : {count()}</div>
}

func Display(page : &mut HtmlPage) {
    var className = #css {
        border-radius : 6px;
        padding : 6px;
        background : blue;
        color : white;
    }
    #html {
        <div>
            <h1>This is our display of components</h1>
            <ReactCounter className={`"{className}"`}/><br/>
            <PreactCounter className={`"{className}"`} /><br/>
            <SolidCounter className={`"{className}"`} /><br/>
            {MarkdownArea(page)}
        </div>
    }
}

public func main() : int {
    var page = HtmlPage()

    // sets the charset to utf-8
    page.defaultPrepare();

    page.defaultPreactSetup()
    page.defaultReactSetup()
    page.defaultSolidSetup()

    Display(page)

    // generates index.html and its assets into output directory
    page.writeToDirectory("output", "index");
    return 0;
}
