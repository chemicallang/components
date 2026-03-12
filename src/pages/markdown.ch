func MarkdownFutureProofDocs(page : &mut HtmlPage) {
#md
# Future-Proof Documentation

This section is powered by the `#md` compiled macro. Unlike other solutions, this is 100% static and processed within the compiler itself.

## Why use Chemical Macros?

1.  **Fastest Execution**: Zero runtime overhead.
2.  **Type Safe**: All values are checked at compile time.
3.  **Modern**: Full support for Github-flavored Markdown.

### Example Logic

```chemical
func main() {
    // This is native code
    const version = "2.0.0-gold";
    println("Chemical version: {version}");
}
```

Experience the beauty of **native speed** combined with **web flexibility**.
#endmd
}

func MarkdownPage(page : &mut HtmlPage) {
    page.appendTitle("Static Markdown - Chemical")
    page.defaultPrepare()
    page.injectDefaultComponentsTheme()
    GlobalStyles(page)
    GlassHeader(page, "markdown")

    #css {
        .md-wrapper { padding: 12rem 0 4rem; }
        .md-box {
            background: #0d0d0f; border: 1px solid rgba(255,255,255,0.05);
            border-radius: 40px; padding: 6rem;
            box-shadow: 0 50px 100px -20px rgba(0,0,0,0.5);
        }
        /* Markdown Theme Overrides */
        .md h1 { font-size: 3.5rem; margin-top: 0; color: #fff; }
        .md p { font-size: 1.25rem; color: #888; }
        .md code { background: #1a1a1c; color: #00d4ff; padding: 0.2rem 0.6rem; border-radius: 8px; }
        .md pre { background: #1a1a1c; padding: 2rem; border-radius: 20px; border: 1px solid rgba(255,255,255,0.05); }
    }

    #html {
        <div class="container md-wrapper">
            <div class="md-box md">
                {MarkdownFutureProofDocs(page)}
            </div>
        </div>
    }
    SocialFooter(page)
    SetupThemeScript(page)
}