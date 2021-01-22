
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-geometry, image-transport, message-filters, message-generation, message-runtime, people-msgs, rosbag, roscpp, roslib, rospy, rostest, sensor-msgs, std-msgs, std-srvs, stereo-image-proc, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-face-detector";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/melodic/face_detector/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4fc58742d316d190c2cddf54fbfda33d9bcde0cd5fcc80eb6687b083d4fd4874";
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
