
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ros-environment";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_environment-release/archive/release/melodic/ros_environment/1.2.1-0.tar.gz;
    sha256 = "2bb4a8d5947bd81fb1b6f7b1e9e822e69ccf99bec2cca7a68fd654017e69993f";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION`, `ROS_DISTRO`, `ROS_PACKAGE_PATH`, and `ROS_ETC_DIR`.'';
    #license = lib.licenses.Apache License 2.0;
  };
}
