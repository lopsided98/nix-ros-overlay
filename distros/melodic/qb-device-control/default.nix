
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, combined-robot-hw, control-msgs, controller-manager, qb-device-hardware-interface, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-control";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_control/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "53058139b5ef7a9a5fc3c2235a1253cffc710f5fa883bba47d1df38c8521ff29";
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
