
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, image-transport, actionlib-msgs, rostest, sensor-msgs, dynamic-reconfigure, roslib, rosbag, stereo-image-proc, message-filters, std-msgs, std-srvs, catkin, cv-bridge, roscpp, message-generation, rospy, image-geometry, people-msgs, actionlib, stereo-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-face-detector";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/melodic/face_detector/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4fc58742d316d190c2cddf54fbfda33d9bcde0cd5fcc80eb6687b083d4fd4874";
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
