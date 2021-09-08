
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-srvs, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-driver";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_driver/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "ec6b1724aa5c7160cadbfef373f11a0ec19c0f7aaf0feb0eb716815614f349d1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-device-srvs qb-device-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent API wrapper for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
