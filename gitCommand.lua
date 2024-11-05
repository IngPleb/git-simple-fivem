GitCommand = {}
GitCommand.__index = GitCommand

function GitCommand:new()
    local self = setmetatable({}, GitCommand)
    return self
end

function GitCommand:execute(command)
    print("Executing '" .. command .. "'...")
    local result = os.execute(command)
    if result then
        print(command .. " successful.")
    else
        print(command .. " failed. Error code: " .. result)
    end
end

function GitCommand:pull(args)
    if args[1] == '--rebase' then
        self:execute('git pull --rebase')
    else
        self:execute('git pull')
    end
end

function GitCommand:push()
    self:execute('git push')
end