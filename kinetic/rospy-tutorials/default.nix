
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rospy-tutorials";
  version = "0.7.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/kinetic/rospy_tutorials/0.7.1-0.tar.gz";
    name = "0.7.1-0.tar.gz";
    sha256 = "3275210916f09b9291ea3cf694770165eda8c63ca2a44b8e4c28ffde9417cd62";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs rostest message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package attempts to show the features of ROS python API step-by-step,
    including using messages, servers, parameters, etc. These tutorials are compatible with the nodes in roscpp_tutorial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
