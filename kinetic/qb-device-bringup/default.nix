
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-bringup";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_bringup/2.0.1-0.tar.gz;
    sha256 = "3a997d457607ece6ae274e36e677485c49e15b4f93108ea019a16086b2734f9c";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent bringup utilities for qbrobotics® devices.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
