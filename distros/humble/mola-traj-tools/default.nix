
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-humble-mola-traj-tools";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_traj_tools/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "16fa79dec9b4001a3828e0a0b1dd672106d51a5c1a39c2577b82c8daee1f1f8c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI tools to manipulate trajectory files as a complement to the evo package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
