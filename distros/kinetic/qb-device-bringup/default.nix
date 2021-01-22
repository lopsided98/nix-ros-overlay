
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-bringup";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_bringup/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "c83cc00ff2332b16baa7269d255d354b0853048a4e004d776372db65ce63f28f";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent bringup utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
