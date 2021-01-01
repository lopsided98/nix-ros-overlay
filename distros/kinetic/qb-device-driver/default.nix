
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-srvs, qb-device-utils, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-driver";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_driver/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "f4f097cc3e92299ee51e8cec66d798f43de1726d91eadde486940632c51c6414";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-device-srvs qb-device-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent API wrapper for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
