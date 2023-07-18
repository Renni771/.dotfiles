require('lualine').setup {
  options = {
    theme = 'gruvbox',
    -- section_separators = { left = '', right = '' },
    -- component_separators = { left = '', right = '' }
    -- Disable separators
    section_separators = '',
    component_separators = ''
  },
  sections = {
    lualine_c = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
