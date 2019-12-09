
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, roslint, socketcan-interface, roscpp, can-msgs, rostest, rosconsole-bridge }:
buildRosPackage {
  pname = "ros-melodic-socketcan-bridge";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/socketcan_bridge/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "b757ed9a8e2e7bce9c8834e356e00263d786ac163229b6846db205638f941174";
  };

  buildType = "catkin";
  buildInputs = [ can-msgs socketcan-interface rosconsole-bridge roscpp ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ can-msgs socketcan-interface rosconsole-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion nodes for messages from SocketCAN to a ROS Topic and vice versa.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
