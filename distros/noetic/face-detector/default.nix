
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-geometry, image-transport, libyamlcpp, message-filters, message-generation, message-runtime, people-msgs, rosbag, roscpp, roslaunch, roslib, roslint, rospy, rostest, sensor-msgs, std-msgs, std-srvs, stereo-image-proc, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-face-detector";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/noetic/face_detector/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "a9da7f39e98a7d7dd118827a9848b1f53ed7316e055e6962c9d7b9425a807c55";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ roslaunch roslint rostest stereo-image-proc ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cv-bridge dynamic-reconfigure geometry-msgs image-geometry image-transport libyamlcpp message-filters message-runtime people-msgs rosbag roscpp roslib rospy sensor-msgs std-msgs std-srvs stereo-image-proc stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Face detection in images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
