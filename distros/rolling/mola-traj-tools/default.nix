
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-rolling-mola-traj-tools";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_traj_tools/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "17ff26429ec875555a5f39a6241a0edc9f042bec9427d3e383d8a581d9c5fced";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI tools to manipulate trajectory files as a complement to the evo package";
    license = with lib.licenses; [ bsd3 ];
  };
}
