
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-geometry, image-transport, message-filters, message-generation, message-runtime, people-msgs, rosbag, roscpp, roslaunch, roslib, roslint, rospy, rostest, sensor-msgs, std-msgs, std-srvs, stereo-image-proc, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-face-detector";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/noetic/face_detector/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "74644b234954d858f362cf03a515b03b553f0cdb350df9e6fb741c4614f44b83";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ roslaunch roslint rostest stereo-image-proc ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cv-bridge dynamic-reconfigure geometry-msgs image-geometry image-transport message-filters message-runtime people-msgs rosbag roscpp roslib rospy sensor-msgs std-msgs std-srvs stereo-image-proc stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Face detection in images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
