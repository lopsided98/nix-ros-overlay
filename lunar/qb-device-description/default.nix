
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-qb-device-description";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/lunar/qb_device_description/2.0.1-0.tar.gz;
    sha256 = "e9503b83b6d3467e2ea4ae97360fd311ef622286bcfa5b351c6f74e50d09e9d3";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent description utilities for qbrobotics® devices.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
