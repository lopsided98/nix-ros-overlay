
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, can-msgs, catkin, rostest, socketcan-interface, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-socketcan-bridge";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/socketcan_bridge/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "bf40769e5652dc526c8434b55c9a4bab56ae24c4138df39712c285f82a8acba9";
  };

  buildType = "catkin";
  buildInputs = [ can-msgs roscpp socketcan-interface ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ can-msgs roscpp socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion nodes for messages from SocketCAN to a ROS Topic and vice versa.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
