-- Palette for the "Vim Default" Zed theme.
-- Source: ~/.config/zed/themes/vim_default.json (dark + light variants).
--
-- Every value below is copied verbatim from the theme's style keys. The few
-- colors that carry alpha in Zed are noted with their original value and
-- composited over the variant's base background, because Neovim highlight
-- groups do not support alpha.

return {
	dark = {
		accents = {
			"#80a0ff",
			"#ffa0a0",
			"#ffa500",
			"#ff80ff",
			"#40ffff",
			"#60ff60",
			"#ffff60",
			"#32cd32",
		},
		ui = {
			background = "#000000", -- background/editor.background #000000d9
			elevated_background = "#0c0c0c", -- elevated_surface.background #0d0d0de6
			active_line_background = "#1a1a1a", -- editor.active_line.background
			highlighted_line_background = "#141414", -- editor.highlighted_line.background
			element_background = "#000000", -- element.background
			element_hover = "#1f1f1f", -- element.hover
			element_selected = "#333333", -- element.selected
			element_disabled = "#101010", -- element.disabled
			text = "#bebebe", -- text/editor.foreground
			text_muted = "#808080", -- text.muted
			text_disabled = "#666666", -- text.disabled
			hidden = "#808080", -- hidden
			invisible = "#4d4d4d", -- editor.invisible
			border = "#404040", -- border
			border_disabled = "#1a1a1a", -- border.disabled
			border_focused = "#808080", -- border.focused
			border_variant = "#303030", -- border.variant
			line_number = "#cdcd00", -- editor.line_number
			active_line_number = "#ffff00", -- editor.active_line_number
			gutter_background = "#000000", -- editor.gutter.background #000000d9
			indent_guide = "#1f1f1f", -- editor.indent_guide
			indent_guide_active = "#3d3d3d", -- editor.indent_guide_active
			wrap_guide = "#262626", -- editor.wrap_guide
			status_bar_background = "#141414", -- status_bar.background #1f1f1fa6
			tab_bar_background = "#171717", -- tab_bar.background #1f1f1fbf
			tab_active_background = "#000000", -- tab.active_background
			selection = "#303030", -- players[0].selection #bebebe40
			search_match = "#ffff00", -- search.match_background
			search_active = "#ffa500", -- search.active_match_background
			document_highlight_read = "#262626", -- editor.document_highlight.read_background
			document_highlight_write = "#333333", -- editor.document_highlight.write_background
			cursor = "#bebebe", -- players[0].cursor
			scrollbar_thumb = "#2b2b2b", -- scrollbar.thumb.background #ffffff2b
			scrollbar_thumb_hover = "#404040", -- scrollbar.thumb.hover_background #ffffff40
			error = "#ff0000", -- error
			error_background = "#2b0000", -- error.background
			warning = "#ffff60", -- warning
			warning_background = "#262200", -- warning.background
			info = "#00ffff", -- info
			info_background = "#002026", -- info.background
			hint = "#808080", -- hint
			hint_background = "#141a1f", -- hint.background
			conflict = "#ffa500", -- conflict
			success = "#32cd32", -- success/created
			modified = "#1e90ff", -- modified/renamed
			modified_border = "#14568f", -- modified.border/renamed.border
			deleted = "#ff0000", -- deleted
			word_added_background = "#0d330d", -- version_control.word_added #32cd3240
			word_deleted_background = "#400000", -- version_control.word_deleted #ff000040
			diff_change_background = "#082440", -- version_control.modified @ 25% over black
			conflict_marker_ours = "#0a290a", -- version_control.conflict_marker.ours #32cd3233
			conflict_marker_theirs = "#061d33", -- version_control.conflict_marker.theirs #1e90ff33
		},
		syntax = {
			attribute = "#ff80ff",
			boolean = "#ffa0a0",
			character = "#ffa0a0",
			comment = "#80a0ff",
			comment_documentation = "#80a0ff",
			constant = "#ffa0a0",
			constant_builtin = "#ffa0a0",
			constructor = "#40ffff",
			decorator = "#ff80ff",
			diff_minus = "#ff0000",
			diff_plus = "#32cd32",
			embedded = "#bebebe",
			enum = "#60ff60",
			["function"] = "#40ffff",
			function_builtin = "#40ffff",
			function_method_call = "#40ffff",
			hint = "#808080",
			keyword = "#ffff60",
			keyword_function = "#ffff60",
			keyword_operator = "#ffff60",
			keyword_return = "#ffff60",
			label = "#ffff60",
			link_text = "#80a0ff",
			link_uri = "#80a0ff",
			method = "#40ffff",
			namespace = "#bebebe",
			number = "#ffa0a0",
			operator = "#ffff60",
			preproc = "#ff80ff",
			primary = "#bebebe",
			property = "#bebebe",
			punctuation = "#bebebe",
			punctuation_bracket = "#bebebe",
			punctuation_delimiter = "#bebebe",
			punctuation_list_marker = "#bebebe",
			punctuation_markup = "#bebebe",
			punctuation_special = "#ffa500",
			selector = "#40ffff",
			selector_pseudo = "#ff80ff",
			special = "#ffa500",
			string = "#ffa0a0",
			string_escape = "#ffa500",
			string_regex = "#ffa0a0",
			string_special = "#ffa500",
			string_special_symbol = "#ffa0a0",
			tag = "#ffa500",
			text_literal = "#ffa0a0",
			title = "#ff00ff",
			type = "#60ff60",
			type_builtin = "#60ff60",
			variable = "#bebebe",
			variable_builtin = "#40ffff",
			variable_member = "#bebebe",
			variable_parameter = "#bebebe",
			variable_special = "#ffa0a0",
			variant = "#60ff60",
		},
	},
	light = {
		accents = {
			"#0000ff",
			"#ff00ff",
			"#6a5acd",
			"#008b8b",
			"#a52a2a",
			"#6a0dad",
			"#2e8b57",
			"#ff8c00",
		},
		ui = {
			background = "#ffffff",
			elevated_background = "#ffffff",
			active_line_background = "#e5e5e5",
			highlighted_line_background = "#f2f2f2",
			element_background = "#f2f2f2",
			element_hover = "#e8e8e8",
			element_selected = "#d3d3d3",
			element_disabled = "#fafafa",
			text = "#000000",
			text_muted = "#666666",
			text_disabled = "#b3b3b3",
			hidden = "#808080",
			invisible = "#b3b3b3",
			border = "#b3b3b3",
			border_disabled = "#e0e0e0",
			border_focused = "#666666",
			border_variant = "#d9d9d9",
			line_number = "#a52a2a",
			active_line_number = "#a52a2a",
			gutter_background = "#ffffff",
			indent_guide = "#e5e5e5",
			indent_guide_active = "#b3b3b3",
			wrap_guide = "#e5e5e5",
			status_bar_background = "#e5e5e5",
			tab_bar_background = "#e5e5e5",
			tab_active_background = "#ffffff",
			selection = "#d3d3d3", -- players[0].selection
			search_match = "#ffff00",
			search_active = "#ffa500",
			document_highlight_read = "#ebebeb", -- #00000014 over white
			document_highlight_write = "#e0e0e0", -- #0000001f over white
			cursor = "#000000", -- players[0].cursor
			scrollbar_thumb = "#d4d4d4", -- #0000002b over white
			scrollbar_thumb_hover = "#bfbfbf", -- #00000040 over white
			error = "#ff0000",
			error_background = "#ffe5e5",
			warning = "#a52a2a",
			warning_background = "#fdf2d9",
			info = "#008b8b",
			info_background = "#d9f2f2",
			hint = "#808080",
			hint_background = "#e6f2f2",
			conflict = "#ff8c00",
			success = "#2e8b57",
			modified = "#1e90ff",
			modified_border = "#14568f",
			deleted = "#ff0000",
			word_added_background = "#cbe2d5", -- #2e8b5740 over white
			word_deleted_background = "#ffbfbf", -- #ff000040 over white
			diff_change_background = "#c7e3ff", -- #1e90ff @ 25% over white
			conflict_marker_ours = "#d5e8dd", -- #2e8b5733 over white
			conflict_marker_theirs = "#d2e9ff", -- #1e90ff33 over white
		},
		syntax = {
			attribute = "#6a0dad",
			boolean = "#ff00ff",
			character = "#ff00ff",
			comment = "#0000ff",
			comment_documentation = "#0000ff",
			constant = "#ff00ff",
			constant_builtin = "#ff00ff",
			constructor = "#008b8b",
			decorator = "#6a0dad",
			diff_minus = "#ff0000",
			diff_plus = "#2e8b57",
			embedded = "#000000",
			enum = "#2e8b57",
			["function"] = "#008b8b",
			function_builtin = "#008b8b",
			function_method_call = "#008b8b",
			hint = "#808080",
			keyword = "#a52a2a",
			keyword_function = "#a52a2a",
			keyword_operator = "#a52a2a",
			keyword_return = "#a52a2a",
			label = "#a52a2a",
			link_text = "#0000ff",
			link_uri = "#0000ff",
			method = "#008b8b",
			namespace = "#000000",
			number = "#ff00ff",
			operator = "#a52a2a",
			preproc = "#6a0dad",
			primary = "#000000",
			property = "#000000",
			punctuation = "#000000",
			punctuation_bracket = "#000000",
			punctuation_delimiter = "#000000",
			punctuation_list_marker = "#000000",
			punctuation_markup = "#000000",
			punctuation_special = "#6a5acd",
			selector = "#008b8b",
			selector_pseudo = "#6a0dad",
			special = "#6a5acd",
			string = "#ff00ff",
			string_escape = "#6a5acd",
			string_regex = "#ff00ff",
			string_special = "#6a5acd",
			string_special_symbol = "#ff00ff",
			tag = "#6a5acd",
			text_literal = "#ff00ff",
			title = "#ff00ff",
			type = "#2e8b57",
			type_builtin = "#2e8b57",
			variable = "#000000",
			variable_builtin = "#008b8b",
			variable_member = "#000000",
			variable_parameter = "#000000",
			variable_special = "#ff00ff",
			variant = "#2e8b57",
		},
	},
}
