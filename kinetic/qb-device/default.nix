
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-device-bringup, qb-device-description, catkin, qb-device-msgs, qb-device-srvs, qb-device-driver, qb-device-control, qb-device-hardware-interface, qb-device-utils }:
buildRosPackage {
  pname = "ros-kinetic-qb-device";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "6ab1a7a3aa6dd4d51f2305b02692fbf7cb7b5bc1716ab5f018bdb45869a0afff";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-device-bringup qb-device-description qb-device-msgs qb-device-srvs qb-device-driver qb-device-control qb-device-hardware-interface qb-device-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent ROS interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
