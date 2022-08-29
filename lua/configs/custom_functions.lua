local M = {}

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

frontend_filetypes = {"typescript", "javascript", "typescriptreact", "javascriptreact"}

M.formatfile= function()
    local file_type = vim.bo.filetype
    local file_path = vim.fn.expand("%")
    if file_type == "python" then
        vim.cmd("!isort " .. file_path)
        vim.cmd("!black " .. file_path)
    elseif has_value(frontend_filetypes, file_type) then
        vim.cmd("!prettier -w " .. file_path)
    end

    print(file_type)
    print(vim.fn.expand("%"))
end

return M
