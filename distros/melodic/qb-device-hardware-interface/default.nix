
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, joint-limits-interface, qb-device-msgs, qb-device-srvs, roscpp, rostest, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-qb-device-hardware-interface";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_hardware_interface/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "09aeea2c08ce2007eea90577857ddaa0a4173981fb5d84de4203a8feebccd470";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface joint-limits-interface qb-device-msgs qb-device-srvs roscpp transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent hardware interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
