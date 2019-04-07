
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-utils";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_utils/2.0.1-0.tar.gz;
    sha256 = "509f942ce8148010f1664e5e4924c8afa986102252e046f0bf56bcf3b3c7646d";
  };

  buildInputs = [ roscpp ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent utility functions for qbrobotics® devices.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
