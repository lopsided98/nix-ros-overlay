
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, gtsam, mola-common, mola-gtsam-factors, mola-yaml, mp2p-icp, mrpt-maps }:
buildRosPackage {
  pname = "ros-lyrical-mola-georeferencing";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/lyrical/mola_georeferencing/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "596d086486aea40a675578c6cf6b5a96fff5c9c81a0357b8797dffc822822a7f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ cli11 gtsam mola-common mola-gtsam-factors mola-yaml mp2p-icp mrpt-maps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library for georeferencing key-frame maps (simplemaps) and related CLI tools";
    license = with lib.licenses; [ gpl3Only ];
  };
}
