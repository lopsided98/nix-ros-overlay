
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ros-environment";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/rolling/ros_environment/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "7594c20c422a180c3f98f502180dcf61d7b47125d5c224ed6724382c12b029e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.";
    license = with lib.licenses; [ asl20 ];
  };
}
