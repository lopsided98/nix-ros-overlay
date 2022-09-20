
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-device-description";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_description/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "98be9512c477e430b84659bfd38f568333815bca4c73b6203e0ea3a38e9e5e6a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent description utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
