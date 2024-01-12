
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-device-bringup";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_bringup/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "a7672d3dc03525ba4644365a97b9ec2a71885affddaf3523c7cd43f353aa5090";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent bringup utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
