
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-device-description";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_description/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "a68151a68cfc86d4f1e306273fb96dfafdbedde57f1ba35af6902e90736d09fb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent description utilities for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
