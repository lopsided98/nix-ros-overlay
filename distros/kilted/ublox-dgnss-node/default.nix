
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, libusb1, pkg-config, rclcpp, rclcpp-components, rtcm-msgs, std-msgs, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-kilted-ublox-dgnss-node";
  version = "0.5.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/kilted/ublox_dgnss_node/0.5.5-5.tar.gz";
    name = "0.5.5-5.tar.gz";
    sha256 = "27c201db5903306ea7e9e8a1c5c5890bf5e7145b74dc489a1e8da1cb7b0aad2c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-uncrustify ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ libusb1 rclcpp rclcpp-components rtcm-msgs std-msgs ublox-ubx-interfaces ublox-ubx-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides a ublox_gnss node for a u-blox GPS GNSS receiver using Gen 9 UBX Protocol";
    license = with lib.licenses; [ asl20 ];
  };
}
