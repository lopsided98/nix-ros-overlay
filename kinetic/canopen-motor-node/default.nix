
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, filters, muparser, joint-limits-interface, catkin, canopen-402, urdf, controller-manager-msgs, canopen-chain-node, roscpp, canopen-master, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-canopen-motor-node";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_motor_node/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "9a6e14e74c9063a4bba8c8257e6045f0f55a68d2964cc677338dec5c68cbf283";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager hardware-interface muparser filters joint-limits-interface canopen-402 controller-manager-msgs urdf canopen-chain-node roscpp canopen-master ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ controller-manager hardware-interface filters muparser joint-limits-interface canopen-402 urdf controller-manager-msgs canopen-chain-node roscpp canopen-master ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''canopen_chain_node specialization for handling of canopen_402 motor devices. It facilitates interface abstraction with ros_control.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
