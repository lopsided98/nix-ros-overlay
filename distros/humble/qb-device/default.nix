
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qb-device-bringup, qb-device-driver, qb-device-msgs, qb-device-ros2-control }:
buildRosPackage {
  pname = "ros-humble-qb-device";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros2-release/get/release/humble/qb_device/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "410f4e1073685f0aa4f21bdf7ac2aa84d82b2b89944e7b062950e66a1673589f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qb-device-bringup qb-device-driver qb-device-msgs qb-device-ros2-control ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains a device-independent ROS interface for qbrobotics® devices.";
    license = with lib.licenses; [ bsd3 ];
  };
}
