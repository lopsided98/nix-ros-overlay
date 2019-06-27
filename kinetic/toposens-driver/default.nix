
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-runtime, toposens-msgs, dynamic-reconfigure, rospy, code-coverage, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-toposens-driver";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_driver/1.1.0-1;
    sha256 = "33af81da748d4a9f4299ad942b747eb2051d41418a804f886822a798e6cfb07b";
  };

  buildInputs = [ message-runtime toposens-msgs rospy dynamic-reconfigure roscpp ];
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ message-runtime toposens-msgs rospy dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for communication with TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
