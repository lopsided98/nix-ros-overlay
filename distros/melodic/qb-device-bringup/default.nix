
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-device-bringup";
  version = "3.0.5-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_bringup/3.0.5-2.tar.gz";
    name = "3.0.5-2.tar.gz";
    sha256 = "739787fa85aa1c7f90acafab362eb8942949223ae1505db215494250b4d1e75f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent bringup utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
