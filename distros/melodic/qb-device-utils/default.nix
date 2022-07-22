
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-utils";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_utils/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "319d5dcb10146d13330e008e62df8314219d57778ecb29a6af8ebb5e60eec0cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent utility functions for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
