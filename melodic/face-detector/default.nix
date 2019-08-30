
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, cv-bridge, image-geometry, actionlib, rospy, tf, geometry-msgs, stereo-msgs, image-transport, message-filters, message-generation, message-runtime, roslib, std-srvs, people-msgs, rosbag, catkin, std-msgs, roscpp, stereo-image-proc, sensor-msgs, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-face-detector";
  version = "1.2.0-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/melodic/face_detector/1.2.0-1.tar.gz;
    sha256 = "4fc58742d316d190c2cddf54fbfda33d9bcde0cd5fcc80eb6687b083d4fd4874";
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
