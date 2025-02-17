
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, libusb1, pkg-config, rclcpp, rclcpp-components, rtcm-msgs, std-msgs, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ublox-dgnss-node";
  version = "0.5.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/jazzy/ublox_dgnss_node/0.5.5-3.tar.gz";
    name = "0.5.5-3.tar.gz";
    sha256 = "57b5ee34e9859f0a37cb1627132eb0f9aed0fe22d4c5a67bc5ad2f3d5d3d5dd6";
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
