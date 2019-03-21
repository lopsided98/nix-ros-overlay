
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, can-msgs, catkin, rostest, socketcan-interface, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-socketcan-bridge";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/socketcan_bridge/0.8.0-0.tar.gz;
    sha256 = "6f82d21a83caa361961006c49bf69268de9215d5a8586dbf90216ea0f07dfec6";
  };

  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ can-msgs roscpp socketcan-interface ];
  nativeBuildInputs = [ can-msgs catkin roscpp socketcan-interface ];

  meta = {
    description = ''Conversion nodes for messages from SocketCAN to a ROS Topic and vice versa.'';
    #license = lib.licenses.BSD;
  };
}
