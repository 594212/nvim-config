function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        string = 'string: \'' .. tostring(x) .. '\''
        return string
    end
end

function bufinfo()
    print(dump(vim.fn.getbufinfo("%")))
end

-- vim.fn.getbufvar("%", "terminal_job_pid") to check if it buffer
