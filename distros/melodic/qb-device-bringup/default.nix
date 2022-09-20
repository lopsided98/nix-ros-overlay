
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-device-bringup";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_bringup/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "ef37bb6951de3ed4e30df177d59b6731b188dc8838e3f64e1c05b8b7822a11ef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent bringup utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
