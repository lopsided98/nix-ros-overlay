
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ros-environment";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_environment-release/archive/release/kinetic/ros_environment/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "85712366beb8c51abb1470ef07a460d1ea643d8d320c0f7ad795314c725739b8";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION`, `ROS_DISTRO`, `ROS_PACKAGE_PATH`, and `ROS_ETC_DIR`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
