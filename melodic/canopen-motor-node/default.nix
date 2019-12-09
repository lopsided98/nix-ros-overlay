
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-master, joint-limits-interface, controller-manager, controller-manager-msgs, urdf, hardware-interface, filters, muparser, catkin, rosunit, canopen-chain-node, roscpp, canopen-402 }:
buildRosPackage {
  pname = "ros-melodic-canopen-motor-node";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/canopen_motor_node/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "1c117618dc45f113ec3deb803b06f85a010581000313f612c6394c2267da5dda";
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
