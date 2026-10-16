
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools, tobas-math, tobas-quadprog, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "b24198dd642aa799533384b3bd5bc2f418c31a11693ccd0491752a6737141c97";
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
