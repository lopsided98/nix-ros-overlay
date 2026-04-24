
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-humble-mola-traj-tools";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_traj_tools/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "8d93b757ba65569d0906ea0f7325b8d7a3b0b23b498027d5e014c9ec75d3888f";
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
