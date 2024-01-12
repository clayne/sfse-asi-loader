Remove-Item $PSScriptRoot/build -Recurse -Force -ErrorAction SilentlyContinue -Confirm:$False | Out-Null
& cmake -B $PSScriptRoot/build -S $PSScriptRoot/Plugin --preset=REL -DCMAKE_TOOLCHAIN_FILE="${env:GITHUB_WORKSPACE}/extern/vcpkg/scripts/buildsystems/vcpkg.cmake"
& cmake --build $PSScriptRoot/build --config Release -v