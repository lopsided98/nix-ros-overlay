
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools, tobas-math, tobas-quadprog, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "66b50036163c7cf26e905f1958cb9796e8043d6771e9e2926a216540c2c30a1b";
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
