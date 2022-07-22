
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, combined-robot-hw, control-msgs, controller-manager, qb-device-hardware-interface, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-device-control";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_control/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "db1480fc86a8b672458722985bc6ddcc88d562978b0d9a24e45a85fa64c830dd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib combined-robot-hw control-msgs controller-manager qb-device-hardware-interface qb-device-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent control library for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
