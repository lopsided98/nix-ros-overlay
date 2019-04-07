
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, joint-limits-interface, catkin, rostest, urdf, qb-device-msgs, qb-device-srvs, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-hardware-interface";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_hardware_interface/2.0.1-0.tar.gz;
    sha256 = "2b14e24e4d2381b5b30e896e5c5fa242fed91949962544baaccbd1968c98a3e0";
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
