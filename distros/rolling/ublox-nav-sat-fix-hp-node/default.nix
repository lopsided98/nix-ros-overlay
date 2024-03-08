
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, sensor-msgs, std-msgs, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-rolling-ublox-nav-sat-fix-hp-node";
  version = "0.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/rolling/ublox_nav_sat_fix_hp_node/0.5.2-2.tar.gz";
    name = "0.5.2-2.tar.gz";
    sha256 = "fc7ff3e349c37047899a80caa7a50c910e119d76f6f30f58782f95bb0b18eff3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-uncrustify ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sensor-msgs std-msgs ublox-ubx-interfaces ublox-ubx-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a NavSatFix node for a u-blox GPS GNSS receiver using Gen 9 UBX Protocol'';
    license = with lib.licenses; [ asl20 ];
  };
}
