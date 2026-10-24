
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools, tobas-math, tobas-quadprog, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "923274d7f201dbd44f5a0c54aa44a1f31663bb0f4d85fbb8dbd6075cc44f6e89";
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
