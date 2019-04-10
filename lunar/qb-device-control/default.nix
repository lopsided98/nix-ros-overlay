
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, control-msgs, catkin, combined-robot-hw, actionlib, roscpp, qb-device-hardware-interface, qb-device-utils }:
buildRosPackage {
  pname = "ros-lunar-qb-device-control";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/lunar/qb_device_control/2.0.1-0.tar.gz;
    sha256 = "2bd990c3b17db32b0d13499e59526b264f7bea5a407fcd6285ef1ca0ad65e050";
  };

  buildInputs = [ controller-manager combined-robot-hw actionlib qb-device-hardware-interface control-msgs roscpp qb-device-utils ];
  propagatedBuildInputs = [ controller-manager combined-robot-hw actionlib qb-device-hardware-interface control-msgs roscpp qb-device-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent control library for qbrobotics® devices.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
