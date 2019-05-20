
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-runtime, toposens-msgs, dynamic-reconfigure, rospy, code-coverage, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-toposens-driver";
  version = "1.0.0-r3";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_driver/1.0.0-3;
    sha256 = "8f908eb1ef0e35949fbf6202e948a609d8d16158351ae198291b54d1914b4f50";
  };

  buildInputs = [ message-runtime toposens-msgs rospy dynamic-reconfigure roscpp ];
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ message-runtime toposens-msgs rospy dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for communication with TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
