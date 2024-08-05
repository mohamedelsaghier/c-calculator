import os

from conan import ConanFile
from conan.tools.microsoft import MSBuild
from conan.tools.cmake import CMakeToolchain, CMake, cmake_layout, CMakeDeps


class helloConan(ConanFile):
    name = "hello"
    version = "1.5"
    settings = "os", "compiler", "build_type", "arch"

    # Sources are located in the same place as this recipe, copy them to the recipe
    exports_sources = "CMakeLists.txt", "Addition.sln", "Addition.vcxproj", "src/*", "include/*"

    def layout(self):
        cmake_layout(self)

    def generate(self):
        deps = CMakeDeps(self)
        deps.generate()
        tc = CMakeToolchain(self)
        tc.generate()

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        # Get the path to the generated solution file
        sln_path = os.path.join(self.build_folder, "Addition.sln")
        msbuild = MSBuild(self)
        msbuild.build("Addition.sln")

    def package(self):
        cmake = CMake(self)
        cmake.install()

    def package_info(self):
        self.cpp_info.libs = ["addition"]
