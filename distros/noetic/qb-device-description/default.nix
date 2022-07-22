
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-device-description";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_description/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "34b74fe037976491c8508e88e9a9c02dacd8b4b10a48684181f9da8504da8414";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent description utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
