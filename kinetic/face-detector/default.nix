
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, cv-bridge, image-geometry, actionlib, rospy, tf, geometry-msgs, stereo-msgs, image-transport, message-filters, message-generation, message-runtime, roslib, std-srvs, people-msgs, rosbag, catkin, std-msgs, roscpp, stereo-image-proc, sensor-msgs, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-face-detector";
  version = "1.1.3-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/kinetic/face_detector/1.1.3-1.tar.gz;
    sha256 = "beee8a3d733efcf3121360ea3f3a6c0b73c33f1b988265527c5953eff6addcd0";
  };

  buildInputs = [ actionlib-msgs cv-bridge image-geometry actionlib rospy tf geometry-msgs stereo-msgs image-transport message-filters message-generation roslib std-srvs people-msgs rosbag std-msgs roscpp stereo-image-proc sensor-msgs ];
  checkInputs = [ rostest stereo-image-proc ];
  propagatedBuildInputs = [ actionlib-msgs cv-bridge image-geometry actionlib rospy tf geometry-msgs stereo-msgs image-transport message-filters message-runtime roslib std-srvs people-msgs rosbag std-msgs roscpp stereo-image-proc sensor-msgs dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Face detection in images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
