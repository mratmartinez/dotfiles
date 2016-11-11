-- look_mrat.lua drawing engine configuration file for Notion.

if not gr.select_engine("de") then return end

de.reset()

de.defstyle("*", {
    shadow_colour = "#404040",
    highlight_colour = "#707070",
    background_colour = "#506050",
    foreground_colour = "#FFFFFF",
    padding_pixels = 1,
    highlight_pixels = 1,
    shadow_pixels = 1,
    border_style = "ridge",
    font = "-*-helvetica-medium-r-normal-*-14-*-*-*-*-*-*-*",
    text_align = "center",
    bar = "none",
})

de.defstyle("frame", {
    transparent_background = "true",
})

de.defstyle("tab", {
    font = "-*-helvetica-medium-r-normal-*-12-*-*-*-*-*-*-*",
    de.substyle("active-selected", {
        shadow_colour = "#452727",
        highlight_colour = "#866868",
        background_colour = "#664848",
        foreground_colour = "#ffffff",
    }),
    de.substyle("active-unselected", {
        shadow_colour = "#351818",
        highlight_colour = "#765858",
        background_colour = "#563838",
        foreground_colour = "#FFFFFF",
    }),
    de.substyle("inactive-selected", {
        shadow_colour = "#404040",
        highlight_colour = "#909090",
        background_colour = "#606060",
        foreground_colour = "#FFFFFF",
    }),
    de.substyle("inactive-unselected", {
        shadow_colour = "#404040",
        highlight_colour = "#707070",
        background_colour = "#506050",
        foreground_colour = "#FFFFFF",
    }),
    text_align = "center",
})

de.defstyle("input", {
    shadow_colour = "#404040",
    highlight_colour = "#707070",
    background_colour = "#201010",
    foreground_colour = "#ffffff",
    border_style = "inlaid",
    de.substyle("*-cursor", {
        background_colour = "#ffffff",
        foreground_colour = "#000000",
    }),
    de.substyle("*-selection", {
        background_colour = "#505050",
        foreground_colour = "#ffffff",
    }),
})

de.defstyle("input-menu", {
    de.substyle("active", {
        shadow_colour = "#452727",
        highlight_colour = "#866868",
        background_colour = "#664848",
        foreground_colour = "#ffffff",
    }),
})

dopath("lookcommon_emboss")

gr.refresh()
