return {
    -- Add the community repository of plugin specifications
    "AstroNvim/astrocommunity",
    -- example of importing a plugin, comment out to use it or add your own
    -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
    -- AstroCommunity: import any community modules here
    -- We import this file in `lazy_setup.lua` before the `plugins/` folder.
    -- This guarantees that the specs are processed before any user plugins.

    -- { import = "astrocommunity.colorscheme.catppuccin" },
    -- { import = "astrocommunity.completion.copilot-lua-cmp" },
    ---@type LazySpec
    {import = "astrocommunity.color.transparent-nvim", enabled = true},
    {import = "astrocommunity.pack.python", enabled = true},
    {"linux-cultist/venv-selector.nvim", opts = {enable_debug_output = true}},
    {import = "astrocommunity.note-taking.obsidian-nvim", enabled = true}, {
        import = "astrocommunity.completion.copilot-lua-cmp",
        opts = {suggestion = {enabled = false}}, enabled = false
    }, {import = "astrocommunity.workflow.bad-practices-nvim", enabled = true}
}
