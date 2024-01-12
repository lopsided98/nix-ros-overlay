
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp-tutorials, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rospy-tutorials";
  version = "0.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/rospy_tutorials/0.10.2-1.tar.gz";
    name = "0.10.2-1.tar.gz";
    sha256 = "2f1bd789def2a6591abe28b2497304681f1ccba3748b2044cf724e6552fcd11b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  checkInputs = [ roscpp-tutorials ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package attempts to show the features of ROS python API step-by-step,
    including using messages, servers, parameters, etc. These tutorials are compatible with the nodes in roscpp_tutorial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
