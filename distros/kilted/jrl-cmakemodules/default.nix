
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch2, cmake, doxygen, eigen, git, matio, pkg-config, python3Packages, simde }:
buildRosPackage {
  pname = "ros-kilted-jrl-cmakemodules";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/kilted/jrl_cmakemodules/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "75c9d2c5a3eac52b272745ac66f4eb20f06392d39dcc851c4d4d66e5455c5ef6";
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
