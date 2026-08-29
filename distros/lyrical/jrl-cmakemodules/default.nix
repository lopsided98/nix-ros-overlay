
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch2, cmake, doxygen, eigen, git, matio, pkg-config, python3Packages, simde }:
buildRosPackage {
  pname = "ros-lyrical-jrl-cmakemodules";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/lyrical/jrl_cmakemodules/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "8c6c54dcc38fdfacbc574e5c040631aa757b0ee9026a64d5b2dbf5c48cc8aed3";
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
