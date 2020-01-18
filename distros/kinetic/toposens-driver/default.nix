
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rospy, rostest, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_driver/2.0.0-1";
    name = "archive.tar.gz";
    sha256 = "48cbc6ef56b9f66da4344a0511aca4bd0b7764b9de7e5c5748ced40e5054504b";
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
