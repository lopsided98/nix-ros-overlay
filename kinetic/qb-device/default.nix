
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-device-control, catkin, qb-device-bringup, qb-device-srvs, qb-device-utils, qb-device-hardware-interface, qb-device-description, qb-device-msgs, qb-device-driver }:
buildRosPackage {
  pname = "ros-kinetic-qb-device";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "3af13387469edd3f8ac517df8c51f6ea5d4ef011843509414bd9ddc1c0e2258a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-device-driver qb-device-bringup qb-device-srvs qb-device-utils qb-device-hardware-interface qb-device-description qb-device-msgs qb-device-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent ROS interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
