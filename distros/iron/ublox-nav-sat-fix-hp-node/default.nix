
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sensor-msgs, std-msgs, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-iron-ublox-nav-sat-fix-hp-node";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/iron/ublox_nav_sat_fix_hp_node/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "3458a13bc3785f64a6181f7237eb5e59fce75da5d1899e43cab2c9a3e5ee8d21";
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
