
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, gtsam, mola-common, mola-gtsam-factors, mola-yaml, mp2p-icp, mrpt-maps }:
buildRosPackage {
  pname = "ros-rolling-mola-georeferencing";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/rolling/mola_georeferencing/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "a75c76ef2248f336aa00f2d183dd6a4c48b0b2aa09f277cff739e4cc35b68e60";
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
