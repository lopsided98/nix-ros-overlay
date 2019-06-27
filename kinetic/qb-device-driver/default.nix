
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-device-srvs, catkin, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-driver";
  version = "2.1.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_driver/2.1.0-1.tar.gz;
    sha256 = "26c2de38bcd3623a92f903147403428304bfc9d50cd7b7689d0684e90bbb16c7";
  };

  buildInputs = [ qb-device-srvs roscpp qb-device-utils ];
  propagatedBuildInputs = [ qb-device-srvs roscpp qb-device-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent API wrapper for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
