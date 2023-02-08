
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-device-bringup, qb-device-control, qb-device-description, qb-device-driver, qb-device-gazebo, qb-device-hardware-interface, qb-device-msgs, qb-device-srvs, qb-device-utils }:
buildRosPackage {
  pname = "ros-melodic-qb-device";
  version = "3.0.5-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device/3.0.5-2.tar.gz";
    name = "3.0.5-2.tar.gz";
    sha256 = "e4150988f95ea6b51d8e809d652f413d601f2d4bfb225efd4a7e947b2b2ad47a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-device-bringup qb-device-control qb-device-description qb-device-driver qb-device-gazebo qb-device-hardware-interface qb-device-msgs qb-device-srvs qb-device-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent ROS interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
