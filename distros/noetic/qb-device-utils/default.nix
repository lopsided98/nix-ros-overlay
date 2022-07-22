
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-device-utils";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_utils/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "c63437817b78213f7fb62da84b7d55f6b968aadd93474307eedb6d37f3d6839b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent utility functions for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
