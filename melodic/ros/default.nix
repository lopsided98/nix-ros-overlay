
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, rosbuild, catkin, roslib, rosunit, rosbash, rosmake, rosclean, roslang, roscreate, mk }:
buildRosPackage {
  pname = "ros-melodic-ros";
  version = "1.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/ros/1.14.7-1.tar.gz";
    name = "1.14.7-1.tar.gz";
    sha256 = "d9c8100fd5dcf41f7d4645263161d02ed5157414b32acac7a5d4ff984892954e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosboost-cfg catkin roslib rosunit rosbash rosmake roscreate rosclean roslang rosbuild mk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packaging system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
