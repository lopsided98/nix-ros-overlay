
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-geometry, image-transport, message-filters, message-generation, message-runtime, people-msgs, rosbag, roscpp, roslib, rospy, rostest, sensor-msgs, std-msgs, std-srvs, stereo-image-proc, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-face-detector";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/face_detector/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "beee8a3d733efcf3121360ea3f3a6c0b73c33f1b988265527c5953eff6addcd0";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rostest stereo-image-proc ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cv-bridge dynamic-reconfigure geometry-msgs image-geometry image-transport message-filters message-runtime people-msgs rosbag roscpp roslib rospy sensor-msgs std-msgs std-srvs stereo-image-proc stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Face detection in images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
