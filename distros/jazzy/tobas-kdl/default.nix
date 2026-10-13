
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools, tobas-math, tobas-quadprog, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "c783a8f3cece8ca6b3070501be2749d04b9d40be1c1fc822007a41bbafe52ae6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-eigen-tools tobas-math tobas-quadprog tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Extended KDL algorithms and data types for robot kinematics, dynamics, control, and trajectories.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
