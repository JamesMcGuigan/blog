# Source: https://claude.ai/chat/8de2270e-54db-4713-a3b5-65976153513d

local function file_exists(name)
   local f = io.open(name, "r")
   if f ~= nil then
      io.close(f)
      return true
   else
      return false
   end
end

function Meta(m)
  if m.generate_toc then
    local toc = pandoc.Div({pandoc.Header(2, "Table of Contents")})
    local list = pandoc.BulletList({})

    local files = io.popen('find . -name "*.qmd" -not -name "index.qmd"'):lines()
    for file in files do
      if file_exists(file) then
        local title = file:match("([^/]+)%.qmd$"):gsub("_", " "):gsub("(%l)(%w*)", function(a,b) return string.upper(a)..b end)
        local item = pandoc.Plain({pandoc.Link(title, file)})
        table.insert(list.content, {item})
      end
    end

    table.insert(toc.content, list)
    return {pandoc.Para({pandoc.Str("")}), toc}
  end
end
