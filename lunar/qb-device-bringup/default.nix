
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-qb-device-bringup";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/lunar/qb_device_bringup/2.0.1-0.tar.gz;
    sha256 = "e574950e8b69680a0859a5443ad1de8a75d3f4424ffe7fadc9a1dcbf1c1a31f9";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent bringup utilities for qbrobotics® devices.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
