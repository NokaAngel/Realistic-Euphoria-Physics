local label = 
[[
   //
  ||
  ||
  ||    +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
  ||    |R|e|a|l|i|s|t|i|c| |E|u|p|h|o|r|i|a| |P|h|y|s|i|c|s|
  ||    +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+  																													
  ||       		Created by TheRaccoon#0001
  ||
  ]]  
Citizen.CreateThread(function()
    local CurrentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)
    if not CurrentVersion then
        print('^1Realistic Euphoria Physics Version Check Failed!^7')
    end

    function VersionCheckHTTPRequest()
        PerformHttpRequest('https://versions.theraccoon.dev/version.php?resource=realistic-euphoria-physics', VersionCheck, 'GET')
    end

    function VersionCheck(err, response, headers)
        Citizen.Wait(3000)
        if err == 200 then
            local version, download, changes = response:match('([^|]+)|([^|]+)|(.+)')
            if not version or version == 'error' then
                print(label)
                print('  ||    ^1Error fetching version data from server.\n^0  ||\n  \\\\\n')
                return
            end
            -- Strip 'v' prefix from version for comparison
            version = version:gsub('^v', '')
            if CurrentVersion ~= version then
                print(label)
                print('  ||    \n  ||    Realistic Euphoria Physics is outdated!')
                print('  ||    Current version: ^2' .. version .. '^7')
                print('  ||    Your version: ^1' .. CurrentVersion .. '^7')
                print('  ||    Please download the latest version from ^5' .. download .. '^7')
                if changes ~= '' then
                    print('  ||    \n  ||    ^5Changes: ^7' .. changes .. "\n^0  \\\\\n")
                end
            else
                print(label)
                print('  ||    ^2Realistic Euphoria Physics is up to date!\n^0  ||\n  \\\\\n')
            end
        else
            print(label)
            print('  ||    ^1There was an error getting the latest version information, if the issue persists contact NokaAngel on Discord.\n^0  ||\n  \\\\\n')
        end
        
        SetTimeout(60000, VersionCheckHTTPRequest) -- 60 seconds
    end

    VersionCheckHTTPRequest()
end)
