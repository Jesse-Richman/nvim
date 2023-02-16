return {
    "theprimeagen/harpoon",
    keys = {
        {"<leader>a", function() require("harpoon.mark").add_file() end, desc = "Mark file"},
        {"<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle Harpoon Menu"},
        {"<C-h>", function() require("harpoon.ui").nav_file(1) end, desc = "Navigate to first marked file"},
        {"<C-t>", function() require("harpoon.ui").nav_file(2) end, desc = "Navigate to second marked file"},
        {"<C-n>", function() require("harpoon.ui").nav_file(3) end, desc = "Navigate to thired marked file"},
        {"<C-s>", function() require("harpoon.ui").nav_file(4) end, desc = "Navigate to first marked file"},
    },
};
