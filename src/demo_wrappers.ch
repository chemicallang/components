// Interactive demo wrappers for the components documentation page.
// Each universal component encapsulates state and JS logic, so the
// #html blocks in components.ch only need static invocations.

// --- Dialog Demos ---

public #universal BasicDialogDemo(props) {
    state isOpen = false
    return <div>
        <Button onClick={() => { isOpen = true }}>Open Dialog</Button>
        <Dialog open={isOpen} onClose={() => { isOpen = false }} ariaLabel="Basic dialog demo">
            <DialogBackdrop />
            <DialogContent>
                <DialogHeader><H3>Dialog Demo</H3></DialogHeader>
                <Text>This is an interactive dialog. Press Escape or click the backdrop to close.</Text>
                <DialogActions>
                    <Button variant="outline" onClick={() => { isOpen = false }}>Cancel</Button>
                    <Button onClick={() => { isOpen = false }}>Confirm</Button>
                </DialogActions>
            </DialogContent>
        </Dialog>
    </div>
}

public #universal CompositionDialogDemo(props) {
    state isOpen = false
    return <div>
        <Button variant="outline" onClick={() => { isOpen = true }}>Open Composition Dialog</Button>
        <Dialog open={isOpen} onClose={() => { isOpen = false }} ariaLabel="Composition demo">
            <DialogBackdrop />
            <DialogContent>
                <DialogHeader><H3>Confirm Action</H3></DialogHeader>
                <Text>This is a composition demo. You can customize the content, header, and actions.</Text>
                <DialogActions>
                    <Button variant="outline" onClick={() => { isOpen = false }}>Cancel</Button>
                    <Button onClick={() => { isOpen = false }}>Confirm</Button>
                </DialogActions>
            </DialogContent>
        </Dialog>
    </div>
}

public #universal ControlledDialogDemo(props) {
    state isOpen = false
    return <div>
        <Button variant="outline" onClick={() => { isOpen = true }}>Open Controlled Dialog</Button>
        <Dialog open={isOpen} onClose={() => { isOpen = false }} ariaLabel="Controlled demo">
            <DialogBackdrop />
            <DialogContent>
                <DialogHeader><H3>Controlled Dialog</H3></DialogHeader>
                <Text>This dialog's visibility is controlled by JavaScript state.</Text>
                <DialogActions>
                    <Button onClick={() => { isOpen = false }}>OK</Button>
                </DialogActions>
            </DialogContent>
        </Dialog>
    </div>
}

public #universal WideDialogDemo(props) {
    state isOpen = false
    return <div>
        <Button variant="ghost" onClick={() => { isOpen = true }}>Open Wide Dialog</Button>
        <Dialog open={isOpen} onClose={() => { isOpen = false }} ariaLabel="Wide dialog demo">
            <DialogBackdrop />
            <DialogContent style="max-width:600px;">
                <DialogHeader><H3>Wide Dialog</H3></DialogHeader>
                <Text>This dialog has a custom width of 600px set via inline style on DialogContent.</Text>
                <DialogActions>
                    <Button variant="outline" onClick={() => { isOpen = false }}>Close</Button>
                </DialogActions>
            </DialogContent>
        </Dialog>
    </div>
}

public #universal CloseButtonDialogDemo(props) {
    state isOpen = false
    return <div>
        <Button variant="outline" onClick={() => { isOpen = true }}>Open with Close Button</Button>
        <Dialog open={isOpen} onClose={() => { isOpen = false }} ariaLabel="Close button demo">
            <DialogBackdrop />
            <DialogContent>
                <div style="display:flex;justify-content:space-between;align-items:center;">
                    <DialogHeader><H3>Dialog with Close</H3></DialogHeader>
                    <button type="button" onClick={() => { isOpen = false }} style="border:none;background:transparent;cursor:pointer;font-size:1.25rem;color:hsl(var(--muted-foreground));padding:0;line-height:1;">&times;</button>
                </div>
                <Text>This dialog has an explicit close button in the header.</Text>
            </DialogContent>
        </Dialog>
    </div>
}

// --- Sheet Demos ---

public #universal SheetSideDemo(props) {
    state isOpen = false
    var side = props.side || "right"
    var label = props.label || "Open Sheet"
    var variant = props.variant || "default"
    return <div>
        <Button variant={variant} onClick={() => { isOpen = true }}>{label}</Button>
        <Sheet open={isOpen} side={side} onClose={() => { isOpen = false }} title={"Sheet (" + side + ")"}>
            <Text>This sheet slides in from the <strong>{side}</strong> edge. Click the overlay or press Escape to close.</Text>
        </Sheet>
    </div>
}

// --- Table Demo ---
// Table components (Table, TableHeadCell, TableCell) must be used inside
// a universal component's JSX, NOT directly in #html blocks. When used in
// #html, html_cbi wraps each universal component in a <span> hydration
// boundary, which breaks table layout (<span> inside <tr> is invalid HTML).
// When used inside another universal component, universal_cbi handles them
// without span wrappers — the parent component owns the hydration boundary.

public #universal TableBasicDemo(props) {
    return <Table>
        <thead><tr><TableHeadCell>Name</TableHeadCell><TableHeadCell>Status</TableHeadCell><TableHeadCell>Score</TableHeadCell></tr></thead>
        <tbody>
            <tr><TableCell>Alpha</TableCell><TableCell>Active</TableCell><TableCell>95</TableCell></tr>
            <tr><TableCell>Beta</TableCell><TableCell>Pending</TableCell><TableCell>82</TableCell></tr>
            <tr><TableCell>Gamma</TableCell><TableCell>Inactive</TableCell><TableCell>71</TableCell></tr>
        </tbody>
    </Table>
}

// --- Toast Demo ---

public #universal ToastDemo(props) {
    state infoCount = 0
    state successCount = 0
    state errorCount = 0
    state warningCount = 0

    return <div>
        <div style="display:flex;flex-wrap:wrap;gap:0.75rem;align-items:center;">
            <Button variant="outline" onClick={() => { infoCount = infoCount + 1 }}>Info Toast</Button>
            <Button variant="outline" onClick={() => { successCount = successCount + 1 }}>Success Toast</Button>
            <Button variant="destructive" onClick={() => { errorCount = errorCount + 1 }}>Error Toast</Button>
            <Button variant="outline" onClick={() => { warningCount = warningCount + 1 }}>Warning Toast</Button>
        </div>
        <ToastViewport style="position:fixed;bottom:1.5rem;right:1.5rem;z-index:10000;display:grid;gap:0.5rem;">
            {infoCount > 0 ? <Toast key={"info-" + infoCount} variant="info" title="Info" description="This is an info toast notification." duration={4000} /> : null}
            {successCount > 0 ? <Toast key={"success-" + successCount} variant="success" title="Success" description="This is a success toast notification." duration={4000} /> : null}
            {errorCount > 0 ? <Toast key={"error-" + errorCount} variant="destructive" title="Error" description="This is an error toast notification." duration={4000} /> : null}
            {warningCount > 0 ? <Toast key={"warning-" + warningCount} variant="warning" title="Warning" description="This is a warning toast notification." duration={4000} /> : null}
        </ToastViewport>
    </div>
}
