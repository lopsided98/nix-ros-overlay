
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sensor-msgs, std-msgs, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-kilted-ublox-nav-sat-fix-hp-node";
  version = "0.5.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/kilted/ublox_nav_sat_fix_hp_node/0.5.5-5.tar.gz";
    name = "0.5.5-5.tar.gz";
    sha256 = "562e95bf418f826123920e90d8a822c52b2933b18a6f1be20169d8ac6746051c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-uncrustify ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sensor-msgs std-msgs ublox-ubx-interfaces ublox-ubx-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides a NavSatFix node for a u-blox GPS GNSS receiver using Gen 9 UBX Protocol";
    license = with lib.licenses; [ asl20 ];
  };
}
