
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, joint-limits-interface, qb-device-msgs, qb-device-srvs, roscpp, rostest, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-qb-device-hardware-interface";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_hardware_interface/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "e0ec7545af3ee737acd780356691359f428febc2884d9cd4ffd04a9a3f740b38";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface joint-limits-interface qb-device-msgs qb-device-srvs roscpp transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent hardware interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
