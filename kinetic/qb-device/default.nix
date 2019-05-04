
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-device-bringup, qb-device-description, catkin, qb-device-msgs, qb-device-srvs, qb-device-driver, qb-device-control, qb-device-hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-device";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device/2.0.1-0.tar.gz;
    sha256 = "4b406f4b58075508d19b040ab83993f4b29cc6e7d7a6e396ed5a7a318a222ce9";
  };

  propagatedBuildInputs = [ qb-device-bringup qb-device-description qb-device-msgs qb-device-srvs qb-device-driver qb-device-control qb-device-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent ROS interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
