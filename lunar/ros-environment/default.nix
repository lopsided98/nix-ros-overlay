
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-ros-environment";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_environment-release/archive/release/lunar/ros_environment/1.1.0-0.tar.gz;
    sha256 = "4020dbdf0d33a81604d76fb8bd7b164c19bc8a846c5247f4660bed0decb18bb4";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION`, `ROS_DISTRO`, `ROS_PACKAGE_PATH`, and `ROS_ETC_DIR`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
