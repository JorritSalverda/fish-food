local name = "infinity"
local version = "0.2.35"
local description = "Infinity is a CLI to easily build your applications using a pipeline as code"
local homepage = "https://github.com/JorritSalverda/infinity"
local repository = "https://github.com/JorritSalverda/infinity"
local darwinSha256 = "66cd89673a4a0237908d3be20d89cff73de354620e8c9d6a1305449793ba4531"
local linuxSha256 = "e59c9141084df5139a96a84f3443154a0f6ae5f79f314912a437ea1764907e1e"
local windowsSha256 = "4b4c07aa5920e25852d39afdefe9362af3d73ae7be67327415f0f2524296ceda"

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
