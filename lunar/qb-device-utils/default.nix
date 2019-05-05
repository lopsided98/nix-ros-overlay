
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-qb-device-utils";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/lunar/qb_device_utils/2.0.1-0.tar.gz;
    sha256 = "27c039fcfbe704672d7ae744adfb5fbdd2ea317ef0cbf488079c786c06a66f10";
  };

  buildInputs = [ roscpp ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent utility functions for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
