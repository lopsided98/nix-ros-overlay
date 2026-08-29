
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch2, cmake, doxygen, eigen, git, matio, pkg-config, python3Packages, simde }:
buildRosPackage {
  pname = "ros-humble-jrl-cmakemodules";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/humble/jrl_cmakemodules/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "2f63720b046591d05097999720a0d32d122199cbb8c73b54dc3c74e1f294d74e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ boost catch2 eigen git matio python3Packages.nanobind python3Packages.numpy python3Packages.pytest python3Packages.typing-extensions simde ];
  propagatedBuildInputs = [ doxygen pkg-config ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CMake utility toolbox";
    license = with lib.licenses; [ gpl3 lgpl3Only bsd3 mit asl20 ];
  };
}
