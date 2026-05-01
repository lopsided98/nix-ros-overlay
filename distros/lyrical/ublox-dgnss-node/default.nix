
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-index-cpp, ament-lint-auto, ament-lint-common, libusb1, pkg-config, rclcpp, rclcpp-components, rtcm-msgs, std-msgs, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ublox-dgnss-node";
  version = "0.7.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/lyrical/ublox_dgnss_node/0.7.4-3.tar.gz";
    name = "0.7.4-3.tar.gz";
    sha256 = "56d70473515d4592b633e08dc110f6101b7363facf1d084e3b6d5d2121ef7ad4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-uncrustify ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp libusb1 rclcpp rclcpp-components rtcm-msgs std-msgs ublox-ubx-interfaces ublox-ubx-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides a ublox_gnss node for a u-blox GPS GNSS receiver using Gen 9 and Gen 20 UBX Protocol";
    license = with lib.licenses; [ asl20 ];
  };
}
