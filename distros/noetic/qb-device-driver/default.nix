
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-srvs, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-device-driver";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_driver/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "ab6f754cc47ba37f06f95a356fb0be3b8996fd1d9d6d581ea03a4cb9e99186f0";
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
