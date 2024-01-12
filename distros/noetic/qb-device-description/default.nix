
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-device-description";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_description/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "27ba479c6697320bf4305cab1ebcb266801b814e333c897581b057835b2444f2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent description utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
