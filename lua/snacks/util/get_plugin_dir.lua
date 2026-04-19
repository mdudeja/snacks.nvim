local get_plugin_dir = function(plugin_name)
  local all_plugins = require("lazy").plugins()

  if type(all_plugins) ~= "table" then
    return
  end

  local entry = unpack(vim.tbl_filter(function(entry)
    return entry.name == plugin_name
  end, all_plugins))

  if not entry then
    return
  end

  return entry.dir
end

return get_plugin_dir
