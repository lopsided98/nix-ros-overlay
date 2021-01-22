
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ros-environment";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/dashing/ros_environment/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "a83abc85b115e2a15abe169b749c10192ac22332126b723abb898c3a64143b7f";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
