local args = {
    [1] = {
        [1] = "Hacker Egg",
        [2] = False
    }
}

workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer(unpack(args))
