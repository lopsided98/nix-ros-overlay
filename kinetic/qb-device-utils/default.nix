
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-utils";
  version = "2.1.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_utils/2.1.0-1.tar.gz;
    sha256 = "12073368294a341e0a56d58402a8e20230294d5a4ed190231b7439ee85585a22";
  };

  buildInputs = [ roscpp ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent utility functions for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
