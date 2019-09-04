
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-crystal-ros-environment";
  version = "2.2.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros_environment-release/archive/release/crystal/ros_environment/2.2.0-0.tar.gz;
    sha256 = "8c890650a2d0c0bf70cb93ad109a920272f64cba3ac089503891a356d67262a5";
  };

  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
