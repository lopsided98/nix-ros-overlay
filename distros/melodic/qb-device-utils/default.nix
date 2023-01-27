
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-utils";
  version = "3.0.5-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_utils/3.0.5-2.tar.gz";
    name = "3.0.5-2.tar.gz";
    sha256 = "83e0ccbddcbdfbbbf0b8a7bfdf6e650ff3080989ab0806c82c6752202c6a75ed";
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
