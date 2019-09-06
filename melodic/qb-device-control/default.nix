
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, control-msgs, catkin, combined-robot-hw, actionlib, roscpp, qb-device-hardware-interface, qb-device-utils }:
buildRosPackage {
  pname = "ros-melodic-qb-device-control";
  version = "2.0.1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_control/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "aa15f86f450ad62174010eae97ce5ba325a52e62a638a01ae3b7a100ec406a6b";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager control-msgs combined-robot-hw actionlib qb-device-hardware-interface roscpp qb-device-utils ];
  propagatedBuildInputs = [ controller-manager control-msgs combined-robot-hw actionlib qb-device-hardware-interface roscpp qb-device-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent control library for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
