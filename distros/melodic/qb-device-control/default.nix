
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, combined-robot-hw, control-msgs, controller-manager, qb-device-hardware-interface, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-control";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_control/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "b6c02de60209d47bf9c36a7fb666156c7288a40521a4411a0b2894524ee60379";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib combined-robot-hw control-msgs controller-manager qb-device-hardware-interface qb-device-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent control library for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
