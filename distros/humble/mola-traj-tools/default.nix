
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-poses }:
buildRosPackage {
  pname = "ros-humble-mola-traj-tools";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_traj_tools/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "6877ea970e2ee87dd5a119e6d3a8c584ffa3e03c9ebd3cd8d4ea8c39a6073b0b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI tools to manipulate trajectory files as a complement to the evo package";
    license = with lib.licenses; [ bsd3 ];
  };
}
