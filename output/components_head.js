function ReactCounter(props) { var [count, setCount] = $_r.useState(0); return $_r.createElement("div", {"style": {textAlign: 'cente', padding: '1re'}}, ` 
             `, $_r.createElement("h3", {}, ` React Component `), ` 
             `, $_r.createElement("button", {"onClick": () => setCount((c) => c + 1), "className": props.className}, ` 
                Count:  `, count, ` 
             `), ` 
         `); }function PreactCounter(props) { var [count, setCount] = $_ph.useState(0); return $_p.h("div", {"style": "text-align: center; padding: 1rem"}, ` 
             `, $_p.h("h3", {}, ` Preact Component `), ` 
             `, $_p.h("button", {"onClick": () => setCount((c) => c + 1), "className": props.className}, ` 
                Count:  `, count, ` 
             `), ` 
         `); }function SolidCounter(props) { var [count, setCount] = $_s.createSignal(0); return $_sh("div", {"style": () => "text-align: center; padding: 1rem"}, ` 
             `, $_sh("h3", {}, ` Solid Component `), ` 
             `, $_sh("button", {"onClick": () => setCount((c) => c + 1), "className": () => props.className}, ` 
                Count:  `, () => count(), ` 
             `), ` 
         `); }