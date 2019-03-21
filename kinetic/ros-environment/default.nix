
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ros-environment";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_environment-release/archive/release/kinetic/ros_environment/1.0.0-0.tar.gz;
    sha256 = "47fd8d7f66078612ad69e6f202834ae0273353a66c552f5cfce1dbe16b4a1390";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION`, `ROS_DISTRO`, `ROS_PACKAGE_PATH`, and `ROS_ETC_DIR`.'';
    #license = lib.licenses.Apache License 2.0;
  };
}
