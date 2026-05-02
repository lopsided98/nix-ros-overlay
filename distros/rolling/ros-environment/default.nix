
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ros-environment";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/rolling/ros_environment/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "79d470ef0c1792332ac8771300c464a08abd97471c8c38ce0ee8a1841fc05003";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.";
    license = with lib.licenses; [ asl20 ];
  };
}
