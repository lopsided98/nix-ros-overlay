
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, rosconsole-bridge, roscpp, roslint, rostest, rosunit, socketcan-interface }:
buildRosPackage {
  pname = "ros-noetic-socketcan-bridge";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/socketcan_bridge/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "2cd955e1bc167097328167d7d7c82c47ef382feec380bfd483bd0910860e0dc7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ can-msgs rosconsole-bridge roscpp socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion nodes for messages from SocketCAN to a ROS Topic and vice versa.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
