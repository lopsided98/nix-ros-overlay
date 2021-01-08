
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-bringup, qb-device-control, qb-device-description, qb-device-driver, qb-device-hardware-interface, qb-device-msgs, qb-device-srvs }:
buildRosPackage {
  pname = "ros-melodic-qb-device";
  version = "2.0.1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "732baae03ff35decece845d122f21d7b7b86d2c31f726cfce269be208c306724";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-device-bringup qb-device-control qb-device-description qb-device-driver qb-device-hardware-interface qb-device-msgs qb-device-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent ROS interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
