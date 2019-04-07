
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, cv-bridge, image-geometry, actionlib, rospy, tf, geometry-msgs, stereo-msgs, image-transport, message-filters, message-generation, message-runtime, roslib, std-srvs, people-msgs, rosbag, catkin, std-msgs, roscpp, stereo-image-proc, sensor-msgs, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-face-detector";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/kinetic/face_detector/1.1.2-0.tar.gz;
    sha256 = "02737e7895266fae2229522192fdc46aeb5ab4b819f438fc7500edd2d7c0e52a";
  };

  buildInputs = [ std-srvs actionlib-msgs people-msgs rosbag cv-bridge image-geometry actionlib std-msgs rospy roscpp tf geometry-msgs stereo-msgs stereo-image-proc image-transport sensor-msgs message-filters message-generation roslib ];
  checkInputs = [ rostest stereo-image-proc ];
  propagatedBuildInputs = [ std-srvs actionlib-msgs people-msgs rosbag cv-bridge image-geometry actionlib std-msgs rospy roscpp tf geometry-msgs stereo-msgs stereo-image-proc image-transport sensor-msgs message-filters message-runtime dynamic-reconfigure roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Face detection in images.'';
    #license = lib.licenses.BSD;
  };
}
