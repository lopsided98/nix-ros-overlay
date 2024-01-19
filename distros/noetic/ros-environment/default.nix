
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-ros-environment";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_environment-release/archive/release/noetic/ros_environment/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "e662f6de77ecf5636ad97a2f7a61e588a64df62396c44e8c5cd3c14adefdf59d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION`, `ROS_DISTRO`, `ROS_PACKAGE_PATH`, and `ROS_ETC_DIR`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
