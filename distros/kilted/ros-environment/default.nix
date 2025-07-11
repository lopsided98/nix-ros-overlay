
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-kilted-ros-environment";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_environment-release/archive/release/kilted/ros_environment/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "ec8ab97c5f526df00e509199e615c70b7b06dcbdce677cbc4f24d3d1e9cfb62f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The package provides the environment variables `ROS_VERSION` and `ROS_DISTRO`.";
    license = with lib.licenses; [ asl20 ];
  };
}
