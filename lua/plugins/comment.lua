return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
    end,

    keys = {
        { "gcc", mode = "n", desc = "Comment / Uncomment" },
        { "gc", mode = { "n", "v" }, desc = "Comment Visual Mode"},
    },
}
