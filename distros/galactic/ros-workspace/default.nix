
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-galactic-ros-workspace";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/galactic/ros_workspace/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "3c81256296566ade0fab7dba74a63366df17ba326b0fd2a9646a33a2b7ac0ba4";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
