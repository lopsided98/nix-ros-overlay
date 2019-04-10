
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, joint-limits-interface, catkin, rostest, urdf, qb-device-msgs, qb-device-srvs, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-lunar-qb-device-hardware-interface";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/lunar/qb_device_hardware_interface/2.0.1-0.tar.gz;
    sha256 = "998ee9e3dc4a989cc6826a48f63fb83b78b0117052de1bb194bc6557998a2500";
  };

  buildInputs = [ hardware-interface urdf qb-device-msgs qb-device-srvs roscpp joint-limits-interface transmission-interface ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface urdf qb-device-msgs qb-device-srvs roscpp joint-limits-interface transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent hardware interface for qbrobotics® devices.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
