
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, lusb, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can-usb";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can_usb/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "44c824d7cb4f595a7edfccd891e232496d7ef6ac10cd126fec9a50ccebca9233";
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
