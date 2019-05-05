
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-device-srvs, catkin, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-lunar-qb-device-driver";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/lunar/qb_device_driver/2.0.1-0.tar.gz;
    sha256 = "7d7a0ef80cb48e264befb8a9b75b237c6a55d8e2afaa2560402a8dff4f8f8fdc";
  };

  buildInputs = [ qb-device-srvs roscpp qb-device-utils ];
  propagatedBuildInputs = [ qb-device-srvs roscpp qb-device-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent API wrapper for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
