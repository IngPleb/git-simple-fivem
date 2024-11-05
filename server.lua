RegisterCommand('gitsimple', function(source, args, rawCommand)
    if source == 0 then  -- Only allow execution from the console, not in-game
        local gitCommand = GitCommand:new()
        if args[1] == 'pull' then
            gitCommand:pull({args[2]})
        elseif args[1] == 'push' then
            gitCommand:push()
        else
            print("Usage: gitsimple pull [--rebase]|push")
        end
    else
        print("This command can only be run from the server console.")
    end
end)