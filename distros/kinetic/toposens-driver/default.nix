
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rospy, rostest, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-driver";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_driver/2.0.2-1";
    name = "archive.tar.gz";
    sha256 = "7f09e11011f194a7aefb430e212bfeda0053cf89e2d5c31e562e5ba19c6b4f82";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp rospy toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for communication with TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
