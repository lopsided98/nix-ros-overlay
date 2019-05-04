
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-device-srvs, catkin, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-driver";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_driver/2.0.1-0.tar.gz;
    sha256 = "c1046ed3676714fe830f63ce77f4485918f0fb16c291da9c9380b3cf9f667d6a";
  };

  buildInputs = [ qb-device-srvs roscpp qb-device-utils ];
  propagatedBuildInputs = [ qb-device-srvs roscpp qb-device-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent API wrapper for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
