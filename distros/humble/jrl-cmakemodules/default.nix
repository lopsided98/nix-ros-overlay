
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch2, cmake, doxygen, eigen, git, matio, pkg-config, python3Packages, simde }:
buildRosPackage {
  pname = "ros-humble-jrl-cmakemodules";
  version = "2.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jrl_cmakemodules-release/archive/release/humble/jrl_cmakemodules/2.4.0-2.tar.gz";
    name = "2.4.0-2.tar.gz";
    sha256 = "6237feb69866565e1651fd055547ee2ac3e26ad1c0d8e0b4c2c3972afee646c9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ boost catch2 eigen git matio python3Packages.numpy python3Packages.pytest python3Packages.typing-extensions simde ];
  propagatedBuildInputs = [ doxygen pkg-config ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CMake utility toolbox";
    license = with lib.licenses; [ gpl3 lgpl3Only bsd3 mit asl20 ];
  };
}
