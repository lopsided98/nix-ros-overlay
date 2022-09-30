
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, hardware-interface, qb-device-hardware-interface, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-hand-hardware-interface";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand_hardware_interface/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "b8a9e30925e56bd73ac4f824235c3099e2c1de36885861ec7c0507ebf801a894";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-toolbox hardware-interface qb-device-hardware-interface roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
