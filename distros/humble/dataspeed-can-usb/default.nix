
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, lusb, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-can-usb";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/humble/dataspeed_can_usb/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "b948f3f2497aef063904d877ff9d88d9ea417e34e1a00cb5de96c7755547b342";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs lusb rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Driver to interface with the Dataspeed Inc. USB CAN Tool";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
