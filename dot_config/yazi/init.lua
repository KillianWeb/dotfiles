require("bunny"):setup({
  hops = {
    { key = "/",          path = "/",                                    },
    { key = "1",          path = "~",              desc = "Home"         },
    { key = "3",          path = "~/Documents",    desc = "Documents"    },
    { key = "4",          path = "~/code",         desc = "Code"         },
    { key = "5",          path = "/usr/share/applications", desc = ".desktop" },
    { key = "6",          path = "/home/dylan/.local/share/chezmoi", desc = "Chezmoi" },
    { key = "7",          path = "~/.config/yazi", desc = "yazi"         },
    { key = "2",          path = "~/.config",      desc = "Config files" },
    { key = "l",          path = "~/.local/share", desc = "Local share"  },
    -- key and path attributes are required, desc is optional
  },
  desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
  ephemeral = true, -- Enable ephemeral hops, default is true
  tabs = true, -- Enable tab hops, default is true
  notify = false, -- Notify after hopping, default is false
  fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
})
