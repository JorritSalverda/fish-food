local name = "infinity"
local version = "0.2.32"
local description = "Infinity is a CLI to easily build your applications using a pipeline as code"
local homepage = "https://github.com/JorritSalverda/infinity"
local repository = "https://github.com/JorritSalverda/infinity"
local darwinSha256 = "55ad50d7577a565fa69b723e1ed773b9b7bc286c9cd3bdb6d6647d48b985d3c8"
local linuxSha256 = "71eab5337ded07690277f047d4aae0d74277c2cfdb37e58d97acbf1c75436b2e"
local windowsSha256 = "62c4d5d2c628ec96b6fe0a8841d75b8c47134201139fcb5a2248f3ac2f48cfb0"

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
