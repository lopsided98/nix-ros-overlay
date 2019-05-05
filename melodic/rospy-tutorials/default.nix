
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp-tutorials, catkin, rostest, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rospy-tutorials";
  version = "0.9.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/rospy_tutorials/0.9.1-0.tar.gz;
    sha256 = "e7045e90505a3136f04f9d7d34a3eb67e81ffeb87d362291c9d1e3b72f72d927";
  };

  buildInputs = [ std-msgs rostest message-generation ];
  checkInputs = [ roscpp-tutorials ];
  propagatedBuildInputs = [ std-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package attempts to show the features of ROS python API step-by-step,
    including using messages, servers, parameters, etc. These tutorials are compatible with the nodes in roscpp_tutorial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
