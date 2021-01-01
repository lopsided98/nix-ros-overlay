
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, combined-robot-hw, control-msgs, controller-manager, qb-device-hardware-interface, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-control";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_control/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "3486c11cc55a72e1754277bbb874e5631add191b70149c344a6e3262a2d1d120";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib combined-robot-hw control-msgs controller-manager qb-device-hardware-interface qb-device-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent control library for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
