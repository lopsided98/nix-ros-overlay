
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ros-environment";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_environment-release/archive/release/melodic/ros_environment/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "73dcd7530b240a850ef81f26d87a1bb38b34a4c59d31ac7ecefc64c90b3d88dd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION`, `ROS_DISTRO`, `ROS_PACKAGE_PATH`, and `ROS_ETC_DIR`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
