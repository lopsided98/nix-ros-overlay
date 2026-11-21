
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, gtsam, mola-common, mola-gtsam-factors, mola-yaml, mp2p-icp, mrpt-maps, mrpt-poses }:
buildRosPackage {
  pname = "ros-kilted-mola-georeferencing";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/kilted/mola_georeferencing/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "9024022e0651488a80830f05fda8b7bfc5d0b1b8944cdaadf357495a498e85e9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ cli11 gtsam mola-common mola-gtsam-factors mola-yaml mp2p-icp mrpt-maps mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library for georeferencing key-frame maps (simplemaps) and related CLI tools";
    license = with lib.licenses; [ gpl3Only ];
  };
}
