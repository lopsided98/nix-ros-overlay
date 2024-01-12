
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-ros-environment";
  version = "4.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/iron/ros_environment/4.1.1-1.tar.gz";
    name = "4.1.1-1.tar.gz";
    sha256 = "47e3177d987d7852fd621cd259e180ee250c5d9deed18803394c73df06b6e8d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
