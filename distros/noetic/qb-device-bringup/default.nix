
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-device-bringup";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_bringup/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "c7b025dccb947e1e87b222bec3801cc629f13e0cafdee21b3ea6308f12b66452";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent bringup utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
