
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-srvs, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-device-driver";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_driver/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "b8890294f705082ae2de41ea0516e5e44d3edb55ea3a7b9f88c93011cdeb0fe3";
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
