
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, hardware-interface, qb-device-hardware-interface, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-hand-hardware-interface";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/noetic/qb_hand_hardware_interface/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "28f9763028d6a5f79e3a16f7b50a730dbb635f6cb740e2bb57fec42090784030";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox hardware-interface qb-device-hardware-interface roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
