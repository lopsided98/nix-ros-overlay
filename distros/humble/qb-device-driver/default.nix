
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qb-device-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-qb-device-driver";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros2-release/get/release/humble/qb_device_driver/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "7b979c4bbaad385e584dcf0fa616ff9b6c9de44977e751936ee8047903f41703";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qb-device-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains a device-independent API wrapper for qbrobotics® devices.";
    license = with lib.licenses; [ bsd3 ];
  };
}
