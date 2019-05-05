
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, can-msgs, catkin, rostest, socketcan-interface, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-socketcan-bridge";
  version = "0.7.9";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/socketcan_bridge/0.7.9-0.tar.gz;
    sha256 = "9351f013adcc5299fbae6f0441abb2c4e762e7bb7e87bd3a683e0bf286bcee63";
  };

  buildInputs = [ can-msgs roscpp socketcan-interface ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ can-msgs roscpp socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion nodes for messages from SocketCAN to a ROS Topic and vice versa.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
