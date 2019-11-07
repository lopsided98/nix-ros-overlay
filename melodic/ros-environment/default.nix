
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ros-environment";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_environment-release/archive/release/melodic/ros_environment/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "928aa91623553711b5e51dafc1271717e7d69ad0bd202a42309100c25721d53a";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides the environment variables `ROS_VERSION`, `ROS_DISTRO`, `ROS_PACKAGE_PATH`, and `ROS_ETC_DIR`.'';
    license = with lib.licenses; [ asl20 ];
  };
}
