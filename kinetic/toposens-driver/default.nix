
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-runtime, toposens-msgs, dynamic-reconfigure, rospy, code-coverage, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-toposens-driver";
  version = "1.2.2-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_driver/1.2.2-1;
    sha256 = "7d5a9d40ef2a92f86de0b1464f7795af4ed764846ee3d22a8e5cc99bcac6d14a";
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
