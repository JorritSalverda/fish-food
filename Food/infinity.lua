local name = "infinity"
local version = "0.2.36"
local description = "Infinity is a CLI to easily build your applications using a pipeline as code"
local homepage = "https://github.com/JorritSalverda/infinity"
local repository = "https://github.com/JorritSalverda/infinity"
local darwinSha256 = "2da1359c9f07d6fe5106727257af5e0bdc31885359700e0c8379cb4c69b9497e"
local linuxSha256 = "1185157c37df42ea00b2ce697ff15eee9c634a2623d2da1a51be6f832f8e2e87"
local windowsSha256 = "9ff39c051d0d3dccbb90aae260aa8297e16a7ffd0824f91ab74d95dea7d82959"

food = {
    name = name,
    description = description,
    homepage = homepage,
    version = version,
    packages = {
        {
            os = "darwin",
            arch = "amd64",
            url = repository .. "/releases/download/v" .. version .. "/" .. name .. "-v" .. version .. "-darwin-amd64.zip",
            -- shasum of the release archive
            sha256 = darwinSha256,
            resources = {
                {
                    path = name .. "-v" .. version .. "-darwin-amd64",
                    installpath = "bin/" .. name,
                    executable = true
                }
            }
        },
        {
            os = "linux",
            arch = "amd64",
            url = repository .. "/releases/download/v" .. version .. "/" .. name .. "-v" .. version .. "-linux-amd64.zip",
            -- shasum of the release archive
            sha256 = linuxSha256,
            resources = {
                {
                    path = name .. "-v" .. version .. "-linux-amd64",
                    installpath = "bin/" .. name,
                    executable = true
                }
            }
        },
        {
            os = "windows",
            arch = "amd64",
            url = repository .. "/releases/download/v" .. version .. "/" .. name .. "-v" .. version .. "windows-amd64.zip",
            -- shasum of the release archive
            sha256 = windowsSha256,
            resources = {
                {
                    path = name .. "-v" .. version .. "-windows-amd64" .. ".exe",
                    installpath = "bin\\" .. name .. ".exe"
                }
            }
        }
    }
}
