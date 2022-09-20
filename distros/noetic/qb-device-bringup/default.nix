
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-device-bringup";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_bringup/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "db41bec0a226ffa8bb21c6c980940a0f80aa10992c37aee0e05fd573ce6629fe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent bringup utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
