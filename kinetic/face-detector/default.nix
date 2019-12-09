
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, image-transport, actionlib-msgs, rostest, sensor-msgs, dynamic-reconfigure, roslib, rosbag, stereo-image-proc, message-filters, std-msgs, std-srvs, catkin, cv-bridge, roscpp, message-generation, rospy, image-geometry, people-msgs, actionlib, stereo-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-face-detector";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/face_detector/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "beee8a3d733efcf3121360ea3f3a6c0b73c33f1b988265527c5953eff6addcd0";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs tf image-transport actionlib-msgs sensor-msgs roslib rosbag stereo-image-proc message-filters std-msgs std-srvs cv-bridge roscpp rospy message-generation image-geometry people-msgs actionlib stereo-msgs ];
  checkInputs = [ stereo-image-proc rostest ];
  propagatedBuildInputs = [ geometry-msgs tf image-transport actionlib-msgs sensor-msgs dynamic-reconfigure roslib rosbag stereo-image-proc message-filters std-msgs std-srvs cv-bridge roscpp rospy image-geometry people-msgs actionlib stereo-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Face detection in images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
