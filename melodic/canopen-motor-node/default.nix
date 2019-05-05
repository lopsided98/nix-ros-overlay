
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, filters, muparser, joint-limits-interface, catkin, canopen-402, urdf, controller-manager-msgs, canopen-chain-node, roscpp, canopen-master, rosunit }:
buildRosPackage {
  pname = "ros-melodic-canopen-motor-node";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_motor_node/0.8.0-0.tar.gz;
    sha256 = "f771723a5af6fefabb6ab3313897e9ae04dbef4a37b18aa0163b331a99152066";
  };

  buildInputs = [ controller-manager hardware-interface muparser filters joint-limits-interface canopen-402 controller-manager-msgs urdf canopen-chain-node roscpp canopen-master ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ controller-manager hardware-interface muparser filters joint-limits-interface canopen-402 controller-manager-msgs urdf canopen-chain-node roscpp canopen-master ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''canopen_chain_node specialization for handling of canopen_402 motor devices. It facilitates interface abstraction with ros_control.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
