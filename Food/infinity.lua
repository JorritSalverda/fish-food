local name = "infinity"
local version = "0.2.33"
local description = "Infinity is a CLI to easily build your applications using a pipeline as code"
local homepage = "https://github.com/JorritSalverda/infinity"
local repository = "https://github.com/JorritSalverda/infinity"
local darwinSha256 = "96e154a1f34f223c1ebf95ceac00d0f060ccb85d8546d7a7978b54f082409397"
local linuxSha256 = "d87fe1a11272f609f33c455b476f2c28b1303ebb617aa735e3bff26668da8b7a"
local windowsSha256 = "d732bf8d70746c0cdeb9c55c8820a1cc103f01b72e803119919b77f0f13fe832"

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
