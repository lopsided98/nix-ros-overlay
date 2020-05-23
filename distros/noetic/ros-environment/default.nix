
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-ros-environment";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_environment-release/archive/release/noetic/ros_environment/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "506742b5cb529d28c78e18eab9a145d71fea185745788927322be23b4f945c3d";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION`, `ROS_DISTRO`, `ROS_PACKAGE_PATH`, and `ROS_ETC_DIR`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
