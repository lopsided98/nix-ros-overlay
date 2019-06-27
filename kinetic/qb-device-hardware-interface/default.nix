
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, joint-limits-interface, catkin, rostest, urdf, qb-device-msgs, qb-device-srvs, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-hardware-interface";
  version = "2.1.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_hardware_interface/2.1.0-1.tar.gz;
    sha256 = "920a3102ac02e1c200fcddd2e7c0835ca93e1c1e1fd296ed828c0364d2099376";
  };

  buildInputs = [ hardware-interface joint-limits-interface urdf qb-device-msgs qb-device-srvs roscpp transmission-interface ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface joint-limits-interface urdf qb-device-msgs qb-device-srvs roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent hardware interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
