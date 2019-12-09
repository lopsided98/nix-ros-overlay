
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rosunit, socketcan-interface, roscpp, can-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-socketcan-bridge";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/socketcan_bridge/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "3683788cc6df58a0042ebbbd58fa0fbdc46d9cdd71b03351be01682f11d6b60a";
  };

  buildType = "catkin";
  buildInputs = [ can-msgs socketcan-interface roscpp ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ can-msgs socketcan-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion nodes for messages from SocketCAN to a ROS Topic and vice versa.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
