
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rospy, rostest, toposens-msgs, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-melodic-toposens-driver";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_driver/2.0.4-1";
    name = "archive.tar.gz";
    sha256 = "c85f8b7bb6cd4fbf18fbc15a9602d2e4098310a632d56e2be1a8e6de54dfaab1";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp rospy toposens-msgs turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for communication with TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
