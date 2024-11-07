RegisterCommand('gitsimple', function(source, args, rawCommand)
    -- Check console
    if source ~= 0 then
        print("This command can only be run from the server console.")
        return
    end

    local gitCommand = GitCommand:new()
    if args[1] == 'pull' then
        gitCommand:pull({ args[2] })
    elseif args[1] == 'push' then
        gitCommand:push()
    else
        print("Usage: gitsimple pull [--rebase]|push")
    end
end)
