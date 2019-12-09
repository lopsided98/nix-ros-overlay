
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, ament-cmake-core, cmake }:
buildRosPackage {
  pname = "ros-eloquent-ros-workspace";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/eloquent/ros_workspace/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "e9c26a514ee1e7f4963b421c74f159c67b71b62e9b439dc97fb9fa72593170b4";
  };

  buildType = "cmake";
  buildInputs = [ ament-package ament-cmake-core ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
