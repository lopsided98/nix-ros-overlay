
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, easy-markers, rosbaglive, catkin, joy-listener, kalman-filter }:
buildRosPackage {
  pname = "ros-kinetic-wu-ros-tools";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/wu_ros_tools/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "1af04eed17642d9b3b65758a7693fc3d8df725cc1fa62ee5f04d83040fde532d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbaglive kalman-filter joy-listener easy-markers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tools for making a variety of generic ROS-related tasks easier.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
