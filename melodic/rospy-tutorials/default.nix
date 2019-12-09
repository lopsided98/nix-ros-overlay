
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, message-runtime, std-msgs, catkin, roscpp-tutorials, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-rospy-tutorials";
  version = "0.9.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/rospy_tutorials/0.9.1-0.tar.gz";
    name = "0.9.1-0.tar.gz";
    sha256 = "e7045e90505a3136f04f9d7d34a3eb67e81ffeb87d362291c9d1e3b72f72d927";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation rostest ];
  checkInputs = [ roscpp-tutorials ];
  propagatedBuildInputs = [ std-msgs rospy message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package attempts to show the features of ROS python API step-by-step,
    including using messages, servers, parameters, etc. These tutorials are compatible with the nodes in roscpp_tutorial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
