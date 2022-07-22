
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-srvs, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-device-driver";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_driver/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "41e7f2059c6e63c28ff45d24bc0c14ef505ec2d13ab15db4e5016f59f97b5589";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-device-srvs qb-device-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent API wrapper for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
