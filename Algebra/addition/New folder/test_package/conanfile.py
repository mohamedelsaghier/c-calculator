import os

from conan import ConanFile
from conan.tools.microsoft import MSBuildDeps, MSBuildToolchain, MSBuild, vs_layout
from conan.tools.build import can_run


class helloTestConan(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    generators = "MSBuildDeps"

    def requirements(self):
        self.requires(self.tested_reference_str)

    def layout(self):
        vs_layout(self)

    def generate(self):
        tc = MSBuildToolchain(self)
        tc.generate()

    def build(self):
        msbuild = MSBuild(self)
        msbuild.build("test_hello.sln")

    def test(self):
        if can_run(self):
            cmd = os.path.join(self.cpp.build.bindir, "test_hello")
            self.run(cmd, env="conanrun")
