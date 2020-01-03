
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-eloquent-ros-environment";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/eloquent/ros_environment/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "a7c2d1836fd734a5e9e41b14d40b1ab006827949e994addd8187364d8db19358";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
