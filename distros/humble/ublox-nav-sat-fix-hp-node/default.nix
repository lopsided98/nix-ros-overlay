
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sensor-msgs, std-msgs, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-humble-ublox-nav-sat-fix-hp-node";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/humble/ublox_nav_sat_fix_hp_node/0.5.7-1.tar.gz";
    name = "0.5.7-1.tar.gz";
    sha256 = "b080eba2a71837a0f1c19e354b58aa10e1bccbe9add6bde875caf7bcaa78c85a";
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
