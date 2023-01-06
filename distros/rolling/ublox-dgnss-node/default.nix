
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-lint-auto, ament-lint-common, libusb1, pkg-config, rclcpp, rclcpp-components, std-msgs, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-rolling-ublox-dgnss-node";
  version = "0.3.5-r3";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/rolling/ublox_dgnss_node/0.3.5-3.tar.gz";
    name = "0.3.5-3.tar.gz";
    sha256 = "2b7b44120c15e63f89a029226994dd34986dff7279869d789b920c576a9f2947";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ libusb1 rclcpp rclcpp-components std-msgs ublox-ubx-interfaces ublox-ubx-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a ublox_gnss node for a u-blox GPS GNSS receiver using Gen 9 UBX Protocol'';
    license = with lib.licenses; [ asl20 ];
  };
}
