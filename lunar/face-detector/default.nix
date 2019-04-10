
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, cv-bridge, image-geometry, actionlib, rospy, tf, geometry-msgs, stereo-msgs, image-transport, message-filters, message-generation, message-runtime, roslib, std-srvs, people-msgs, rosbag, catkin, std-msgs, roscpp, stereo-image-proc, sensor-msgs, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-face-detector";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/lunar/face_detector/1.1.2-1.tar.gz;
    sha256 = "c7a2abea39728e018982a349e68c429560a396f07c35be30259161e42e3a9f29";
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
