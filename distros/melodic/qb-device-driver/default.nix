
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-srvs, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-driver";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_driver/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "b78fd47424931452f447585f15e4e9c097c1452c0687a3ebb07447011f3021e8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-device-srvs qb-device-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent API wrapper for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
