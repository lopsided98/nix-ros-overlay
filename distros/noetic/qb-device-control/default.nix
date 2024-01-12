
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, combined-robot-hw, control-msgs, controller-manager, qb-device-hardware-interface, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-device-control";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_control/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "1800fa231f1de75e8734d683dc086cb00021397476ea9b16479c179d648b1513";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib combined-robot-hw control-msgs controller-manager qb-device-hardware-interface qb-device-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent control library for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
