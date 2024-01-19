
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ros-environment";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/rolling/ros_environment/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "baaa9fa766412dcf1449501247150dac71a616d2667d44408f0b0c35f8b3c407";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
