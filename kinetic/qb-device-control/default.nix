
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, control-msgs, catkin, combined-robot-hw, actionlib, roscpp, qb-device-hardware-interface, qb-device-utils }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-control";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_control/2.0.1-0.tar.gz;
    sha256 = "0ab90849feea13b0208026bdfe782dcd9e85119da5d45946bd81c4a8b50acc59";
  };

  buildInputs = [ controller-manager combined-robot-hw actionlib qb-device-hardware-interface control-msgs roscpp qb-device-utils ];
  propagatedBuildInputs = [ controller-manager combined-robot-hw actionlib qb-device-hardware-interface control-msgs roscpp qb-device-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent control library for qbrobotics® devices.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
