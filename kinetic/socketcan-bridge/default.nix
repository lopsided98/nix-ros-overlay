
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, can-msgs, catkin, rostest, socketcan-interface, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-socketcan-bridge";
  version = "0.7.10";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/socketcan_bridge/0.7.10-0.tar.gz;
    sha256 = "44760caaf9b93229a113e91b889e6b2a6dcc7d7425335044a7776ee085cfed43";
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
