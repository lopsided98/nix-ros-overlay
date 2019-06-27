
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-runtime, toposens-msgs, dynamic-reconfigure, rospy, code-coverage, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-toposens-driver";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_driver/1.1.0-1;
    sha256 = "b97afc5f54c000d8a38b1afe770f0bf8a75b3b9292728717534e1b7b825d1902";
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
