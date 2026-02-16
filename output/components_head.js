function ReactCounter(props) { var [count, setCount] = $_r.useState(0); return $_r.createElement("div", {"style": {textAlign: 'center', padding: '2rem', background: 'rgba(255,255,255,0.03)', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.1)'}}, ` 
             `, $_r.createElement("h3", {"style": {color: '#61dafb', marginBottom: '1.5rem'}}, ` React `), ` 
             `, $_r.createElement("button", {"onClick": () => setCount((c) => c + 1), "className": props.className, "style": {cursor: 'pointer', transition: 'all 0.2s'}}, ` 
                Count:  `, count, ` 
             `), ` 
         `); }function PreactCounter(props) { var [count, setCount] = $_ph.useState(0); return $_p.h("div", {"style": {textAlign: 'center', padding: '2rem', background: 'rgba(255,255,255,0.03)', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.1)'}}, ` 
             `, $_p.h("h3", {"style": "color: #673ab8; margin-bottom: 1.5rem"}, ` Preact `), ` 
             `, $_p.h("button", {"onClick": () => setCount((c) => c + 1), "className": props.className}, ` 
                Count:  `, count, ` 
             `), ` 
         `); }function SubComponent(props) { return $_sh("span", {}, props.info.name); }function SolidCounter(props) { var [count, setCount] = $_s.createSignal(0); return $_sh("div", {"style": {textAlign: 'center', padding: '2rem', background: 'rgba(255,255,255,0.03)', borderRadius: '24px', border: '1px solid rgba(255,255,255,0.1)'}}, ` 
             `, $_sh("h3", {"style": "color: #2c4f7c; margin-bottom: 1.5rem"}, ` Solid `), ` 
             `, $_sh("button", {"onClick": () => setCount((c) => c + 1), "className": props.className}, ` 
                Count:  `, () => count(), ` 
             `), ` 
             `, $_s.createComponent(SubComponent, {"info": {name: "John", lName: "Doe"}}), ` 
         `); }