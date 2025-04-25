
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ros-environment";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/rolling/ros_environment/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "6dd935fb5f437cb43e287635f63771975a6d740077ed2085ef231f9aecfbfef0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.";
    license = with lib.licenses; [ asl20 ];
  };
}
