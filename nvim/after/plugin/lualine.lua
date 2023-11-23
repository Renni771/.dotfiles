local function get_harpoon_index()
  local mark_idx = require('harpoon.mark').get_current_index()
  if mark_idx == nil then
    return ""
  end

  return string.format('󱡅 %d', mark_idx)
end

require('lualine').setup {
  options = {
    theme = 'gruvbox',
    section_separators = { left = '', right = '' },
    component_separators = ''
  },
  sections = {
    lualine_b = {
      { get_harpoon_index },
    },
    lualine_c = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
