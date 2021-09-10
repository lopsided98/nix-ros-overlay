
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-utils";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_utils/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "222e3e8e62d4a993ecb02be66294eff8c1983adf28a3e0ac5a336038c780be36";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent utility functions for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
