
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-master, joint-limits-interface, controller-manager, controller-manager-msgs, urdf, hardware-interface, filters, muparser, catkin, rosunit, canopen-chain-node, roscpp, canopen-402 }:
buildRosPackage {
  pname = "ros-kinetic-canopen-motor-node";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_motor_node/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "9a6e14e74c9063a4bba8c8257e6045f0f55a68d2964cc677338dec5c68cbf283";
  };

  buildType = "catkin";
  buildInputs = [ canopen-master controller-manager urdf controller-manager-msgs hardware-interface joint-limits-interface filters muparser roscpp canopen-chain-node canopen-402 ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ canopen-master controller-manager urdf controller-manager-msgs hardware-interface joint-limits-interface filters muparser canopen-chain-node roscpp canopen-402 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''canopen_chain_node specialization for handling of canopen_402 motor devices. It facilitates interface abstraction with ros_control.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
