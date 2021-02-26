
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-geometry, image-transport, message-filters, message-generation, message-runtime, people-msgs, rosbag, roscpp, roslaunch, roslib, roslint, rospy, rostest, sensor-msgs, std-msgs, std-srvs, stereo-image-proc, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-face-detector";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/face_detector/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "3dc98f0e26f9bd1d6319d47c5f16155be4799c0f45b516b84c28b4bade3af692";
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
