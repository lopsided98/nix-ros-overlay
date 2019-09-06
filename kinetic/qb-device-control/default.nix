
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, control-msgs, catkin, combined-robot-hw, actionlib, roscpp, qb-device-hardware-interface, qb-device-utils }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-control";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_control/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "544fc0f5f69c830bf7d7a9dcacbffdb4800bc985073f4acab440ef65e0b28f57";
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
