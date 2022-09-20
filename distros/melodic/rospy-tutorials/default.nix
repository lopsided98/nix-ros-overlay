
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp-tutorials, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rospy-tutorials";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/rospy_tutorials/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "ed656ddf3487d1b362676d72b5aa00c09699a33c013d1f0f2fa2d5c33942d27b";
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
