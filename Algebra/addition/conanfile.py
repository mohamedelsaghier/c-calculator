import os
from conan import ConanFile
from conan.tools.microsoft import MSBuild, MSBuildToolchain
from conan.tools.cmake import CMake, CMakeToolchain, CMakeDeps

class AdditionConan(ConanFile):
    name = "addition"
    version = "1.4"
    description = "An addition library"
    settings = "os", "compiler", "build_type", "arch"
    exports_sources = "include/*", "src/*", "CMakeLists.txt", "cmake/*"

    def layout(self):
        self.folders.source = "."
        self.folders.build = "build"

    def generate(self):
        tc = CMakeToolchain(self)
        tc.generate()
        cmake_deps = CMakeDeps(self)
        cmake_deps.generate()
        msbuild_tc = MSBuildToolchain(self)
        msbuild_tc.generate()

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        
        # Get the path to the generated solution file
        sln_path = os.path.join(self.build_folder, "Addition.sln")

        # Build using MSBuild
        msbuild = MSBuild(self)
        msbuild.build(sln_path)

    def package(self):
        cmake = CMake(self)
        cmake.install()

    def package_info(self):
        self.cpp_info.libs = ["addition"]
        self.cpp_info.includedirs = ["include"]
        self.cpp_info.libdirs = ["lib"]
        self.cpp_info.bindirs = ["bin"]
