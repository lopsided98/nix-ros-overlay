
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-ros-environment";
  version = "4.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/jazzy/ros_environment/4.2.1-1.tar.gz";
    name = "4.2.1-1.tar.gz";
    sha256 = "7dc7477cfc6bc2e7c02d2ea7dc75a215d0271f8891472672450e16386f0a11cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.";
    license = with lib.licenses; [ asl20 ];
  };
}
