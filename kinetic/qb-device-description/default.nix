
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-description";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_description/2.0.1-0.tar.gz;
    sha256 = "afb792e4c67214bfb255c2aae9ea397c0cda01c3664fd7df92bec410dddcac36";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent description utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
