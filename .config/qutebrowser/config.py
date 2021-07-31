config.load_autoconfig()

# Show favicons in tab bar
c.tabs.favicons.show = 'always'

# Padding (in pixels) around text for tabs.
c.tabs.padding = {'bottom': 3, 'left': 2, 'right': 2, 'top': 3}

# Position of the tab bar.
c.tabs.position = 'top'

# Alignment of the text inside of tabs.
c.tabs.title.alignment = 'left'

# Width of tab indicators.
c.tabs.indicator.width = 3

# Padding (in pixels) for tab indicators.
c.tabs.indicator.padding = {'bottom': 0, 'left': 0, 'right': 5, 'top': 0}

# Height (in pixels or as percentage of the window) of the completion.
c.completion.height = '30%'

# Padding (in pixels) for the statusbar.
c.statusbar.padding = {'bottom': 5, 'left': 5, 'right': 5, 'top': 5}

# Widgets in statusbar
c.statusbar.widgets = ["keypress", "url", "scroll", "history", "tabs", "progress"]

# Position of the status bar.
c.statusbar.position = 'bottom'

# Text color of the completion widget
c.colors.completion.fg = 'black'

# Background color of the completion widget for odd rows.
c.colors.completion.odd.bg = '#F2F2F2'

# Background color of the completion widget for even rows.
c.colors.completion.even.bg = 'lightgrey'

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = 'black'

# Background color of the completion widget category headers.
c.colors.completion.category.bg = 'lightgrey'

# Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = 'black'

# Background color of the selected completion item.
c.colors.completion.item.selected.bg = 'darkgrey'

# Top border color of the completion widget category headers.
c.colors.completion.item.selected.border.top = 'black'

# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = 'black'

# Foreground color of the matched text in the completion.
c.colors.completion.match.fg = '#ff4444'

# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = 'white'

# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = 'darkgrey'

# Foreground color of the statusbar.
c.colors.statusbar.normal.fg = 'black'

# Background color of the statusbar.
c.colors.statusbar.normal.bg = 'darkgrey'

# Background color of the statusbar in insert mode.
c.colors.statusbar.insert.bg = '#039B9A'

# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = 'black'

# Foreground color of the statusbar in command mode.
c.colors.statusbar.command.fg = 'black'

# Background color of the statusbar in command mode.
c.colors.statusbar.command.bg = 'darkgrey'

# Default foreground color of the URL in the statusbar.
c.colors.statusbar.url.fg = 'black'

# Foreground color of the URL in the statusbar on error.
c.colors.statusbar.url.error.fg = 'orange'

# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = 'blue'

# Foreground color of the URL in the statusbar on successful load
c.colors.statusbar.url.success.http.fg = 'black'

# Foreground color of the URL in the statusbar on successful load
c.colors.statusbar.url.success.https.fg = 'black'

# Foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = 'black'

# Font used in the completion widget.
c.fonts.completion.entry = '8pt monospace'

# CSS border value for hints.
c.hints.border = '2px solid black'

# Font color for hints.
c.colors.hints.fg = 'white'

# Background color for hints.
c.colors.hints.bg = 'black'

# Font color for the matched part of hints.
c.colors.hints.match.fg = 'lime'

# keybindings for normal mode
config.bind('<backspace>', 'back')
config.bind('gT', 'tab-prev')
config.bind('gt', 'tab-next')
config.unbind('q')
config.bind('qq', 'quit')
config.bind('<Meta-R>', 'reload')
