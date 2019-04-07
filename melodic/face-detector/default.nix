
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, cv-bridge, image-geometry, actionlib, rospy, tf, geometry-msgs, stereo-msgs, image-transport, message-filters, message-generation, message-runtime, roslib, std-srvs, people-msgs, rosbag, catkin, std-msgs, roscpp, stereo-image-proc, sensor-msgs, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-face-detector";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/melodic/face_detector/1.1.2-0.tar.gz;
    sha256 = "ae5364cd22c42db83150c148f0d9981ff3568b5285630029b87b491f64b6e1a5";
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
