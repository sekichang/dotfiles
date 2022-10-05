local status_ok, onedarkpro = pcall(require, "onedarkpro")
if not status_ok then
  return
end

onedarkpro.setup {
  styles = {
    comments = "NONE",
    functions = "NONE",
    keywords = "NONE",
    strings = "NONE",
    variables = "NONE",
    virtual_text = "NONE",
  },
}
