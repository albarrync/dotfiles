local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Maps
vim.keymap.set({ "i", "s" }, '<c-k>', function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })
vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/plugins/luasnip.lua<CR>")

 -- Snips
ls.add_snippets("all", {
-- RUBY/RAILS
-- <% INSERT %>
  s("er", {
    t("<% "), i(1),
    t(" %>"), i(0)
  }),
-- <%= INSERT %>
  s("pe", {
    t("<%= "), i(1),
    t(" %>"), i(0)
  }),
-- <% if %>
  s("eif", {
    t("<% if "), i(1),
    t({" %>", ""}), i(2),
    t({"", ""}),
    t("<% end %>"), i(0)
  }),
-- <% .each do |thing| %>
  s("edo", {
    t({"<% "}), i(1),
    t({".each do |"}), i(2),
    t({"| %>"}),
    t({"", ""}), i(3),
    t({"", ""}),
    t({"<% end %>"}), i(0)
  }),
-- MARKDOWN
  s("mdl", {
    t({"["}), i(1),
    t({"]("}), i(2),
    t({")"}), i(0)
  }),
})
