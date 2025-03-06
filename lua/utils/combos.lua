local M = {}

function M.combo(keys, callback, timeout)
    local pressed_keys_in_interval = 0
    local last_insert = nil

    for i = 1,#keys do
        vim.keymap.set("i", keys[i], function()
            local now = os.time()
            if not last_insert or now > last_insert + timeout then
                pressed_keys_in_interval = 0
                last_insert = now
            end

            -- if pressed_keys_in_interval == #keys then

        end
    end
end

return M
