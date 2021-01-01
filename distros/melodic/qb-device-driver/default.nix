
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-srvs, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-driver";
  version = "2.0.1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_driver/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "5b3ec2c7b2ecf6aa8e1b99156423cb9f88208eb8d02024c2b30b8c6b1570e5d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-device-srvs qb-device-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent API wrapper for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
