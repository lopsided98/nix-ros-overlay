
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-utils";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_utils/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "1bc8a2d83fbf4195ebe6f44819b2659c769c1da3895b280ee2a3021c83791748";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent utility functions for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
