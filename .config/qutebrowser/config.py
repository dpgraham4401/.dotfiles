config.load_autoconfig()

c.tabs.favicons.show = 'always'
c.tabs.padding = {'bottom': 3, 'left': 2, 'right': 2, 'top': 3}
c.tabs.position = 'top'
c.tabs.title.alignment = 'left'
c.tabs.indicator.width = 3
c.tabs.indicator.padding = {'bottom': 0, 'left': 0, 'right': 5, 'top': 0}
c.completion.height = '30%'
c.statusbar.padding = {'bottom': 5, 'left': 5, 'right': 5, 'top': 5}
c.statusbar.widgets = ["keypress", "url", "scroll", "history", "tabs", "progress"]
c.statusbar.position = 'bottom'
c.colors.completion.fg = 'black'
c.colors.completion.odd.bg = '#F2F2F2'
c.colors.completion.even.bg = 'lightgrey'
c.colors.completion.category.fg = 'black'
c.colors.completion.category.bg = 'lightgrey'
c.colors.completion.item.selected.fg = 'black'
c.colors.completion.item.selected.bg = 'darkgrey'
c.colors.completion.item.selected.border.top = 'black'
c.colors.completion.item.selected.border.bottom = 'black'
c.colors.completion.match.fg = '#ff4444'
c.colors.completion.scrollbar.fg = 'white'
c.colors.completion.scrollbar.bg = 'darkgrey'
c.colors.statusbar.normal.fg = 'black'
c.colors.statusbar.normal.bg = 'darkgrey'
c.colors.statusbar.insert.bg = '#039B9A'
c.colors.statusbar.private.fg = 'black'
c.colors.statusbar.command.fg = 'black'
c.colors.statusbar.command.bg = 'darkgrey'
c.colors.statusbar.url.fg = 'black'
c.colors.statusbar.url.error.fg = 'orange'
c.colors.statusbar.url.hover.fg = 'blue'
c.colors.statusbar.url.success.http.fg = 'black'
c.colors.statusbar.url.success.https.fg = 'black'
c.colors.statusbar.url.warn.fg = 'black'
c.fonts.completion.entry = '8pt monospace'
c.hints.border = '2px solid black'
c.colors.hints.fg = 'white'
c.colors.hints.bg = 'black'
c.colors.hints.match.fg = 'lime'
config.bind('<backspace>', 'back')
config.bind('gT', 'tab-prev')
config.bind('gt', 'tab-next')
config.unbind('d')
config.unbind('q')
config.bind('q', 'tab-close')
config.bind('qq', 'quit')
config.bind('<Meta-R>', 'reload')
