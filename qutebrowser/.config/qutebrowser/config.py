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
c.colors.tabs.selected.odd.bg = '#0088cc'
c.colors.tabs.selected.even.bg = '#0088cc'
c.colors.tabs.even.bg = '#1c375f'
c.colors.tabs.odd.bg = '#2b3344'
c.colors.statusbar.normal.fg = 'white'
c.colors.statusbar.normal.bg = '#1c375f'
c.colors.statusbar.insert.bg = '#1c375f'
c.colors.statusbar.command.bg = '#1c375f'
c.colors.statusbar.url.fg = 'white'
c.colors.statusbar.url.warn.fg = 'black'
c.colors.messages.error.bg = 'purple'
c.fonts.completion.entry = '8pt monospace'
c.hints.border = '2px solid black'
c.colors.hints.fg = 'white'
c.colors.hints.bg = '#1c375f'
c.colors.hints.match.fg = '#1c375f'
c.hints.border = 'none'
c.colors.completion.item.selected.bg = '#1c375f'
c.colors.completion.item.selected.fg = 'white'
c.colors.completion.item.selected.border.bottom = 'black'
c.colors.completion.item.selected.border.top = 'black'

# keybindings
config.unbind('d')
config.unbind('<Ctrl-q>')
config.bind('qq', 'close')
config.bind('q', 'tab-close')
config.bind('<Meta-R>', 'reload')

