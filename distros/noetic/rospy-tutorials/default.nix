
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp-tutorials, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rospy-tutorials";
  version = "0.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/rospy_tutorials/0.10.3-1.tar.gz";
    name = "0.10.3-1.tar.gz";
    sha256 = "166095612d7d039ea65e88e1e100f23670f96d5083af1ec7ee11aecf948c22ca";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  checkInputs = [ roscpp-tutorials ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package attempts to show the features of ROS python API step-by-step,
    including using messages, servers, parameters, etc. These tutorials are compatible with the nodes in roscpp_tutorial.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
