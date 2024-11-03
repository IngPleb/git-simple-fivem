RegisterCommand('gitsimple', function(source, args, rawCommand)
    if source == 0 then  -- Only allow execution from the console, not in-game
        if args[1] == 'pull' then
            print("Executing 'git pull --rebase'...")
            local result = os.execute('git pull --rebase')
            if result then
                print("Git pull successful.")
            else
                print("Git pull failed.")
            end
        elseif args[1] == 'push' then
            print("Executing 'git push'...")
            local result = os.execute('git push')
            if result then
                print("Git push successful.")
            else
                print("Git push failed.")
            end
        else
            print("Usage: gitsimple pull|push")
        end
    else
        print("This command can only be run from the server console.")
    end
end)