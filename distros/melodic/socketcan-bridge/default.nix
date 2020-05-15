
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, rosconsole-bridge, roscpp, roslint, rostest, rosunit, socketcan-interface }:
buildRosPackage {
  pname = "ros-melodic-socketcan-bridge";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/socketcan_bridge/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "a4534df50ca62cc92831db09e212f25fefa5833e94d651a1cd1ae0e4b28b90d2";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ can-msgs rosconsole-bridge roscpp socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion nodes for messages from SocketCAN to a ROS Topic and vice versa.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
