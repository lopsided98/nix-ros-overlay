
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ros-environment";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/foxy/ros_environment/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "8b05844856b38b6501c6425570167c9862fc1e4e9464e18324408d8788f35064";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
