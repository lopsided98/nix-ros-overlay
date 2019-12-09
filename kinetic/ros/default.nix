
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, rosbuild, catkin, roslib, rosunit, rosbash, rosmake, rosclean, roslang, roscreate, mk }:
buildRosPackage {
  pname = "ros-kinetic-ros";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/kinetic/ros/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "b6c3dba4dab4e918c1d363728b943dd3895005f580c0843b1d2295a056903dc0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosboost-cfg catkin roslib rosunit rosbash rosmake roscreate rosclean roslang rosbuild mk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packaging system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
