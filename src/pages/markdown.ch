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
    const version = "v0.0.32";
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
            background: var(--chx-surface);
            border: var(--chx-border-width) solid var(--chx-border);
            border-radius: var(--chx-radius);
            padding: 6rem;
            box-shadow: var(--chx-shadow-sm);
        }
        /* Markdown Theme Overrides */
        .md h1 {
            font-size: 3.5rem;
            margin-top: 0;
            color: var(--chx-text-main);
        }
        .md p {
            font-size: 1.25rem;
            color: var(--chx-text-muted);
        }
        .md code {
            background: var(--chx-bg);
            color: var(--chx-text-main);
            padding: 0.2rem 0.6rem;
            border-radius: 8px;
        }
        .md pre {
            background: var(--chx-bg);
            padding: 2rem;
            border-radius: var(--chx-radius);
            border: var(--chx-border-width) solid var(--chx-border);
        }
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