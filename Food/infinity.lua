local name = "infinity"
local version = "0.2.22"
local description = "Infinity is a CLI to easily build your applications using a pipeline as code"
local homepage = "https://github.com/JorritSalverda/infinity"
local repository = "https://github.com/JorritSalverda/infinity"
local darwinSha256 = "ec960d0ec8091b06421ffcd665f7a9b602a954b4cbd90b897d64465225474902"
local linuxSha256 = "f6f9240689578b89e0e117066bbc8977f6e461bb5281e6713b9ac280b59c3bdf"
local windowsSha256 = "6db7f4321129cbb725ba80f4602552352bef34fd4b1d1dfc7409523a1afda91c"

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
