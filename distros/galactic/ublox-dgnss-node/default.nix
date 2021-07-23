
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-lint-auto, ament-lint-common, libusb1, rclcpp, rclcpp-components, std-msgs, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-galactic-ublox-dgnss-node";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/galactic/ublox_dgnss_node/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "03e5a6fb5441e08c467aae38ac8e06636e97e58ab109ba122dc10ca94b2b6630";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ libusb1 rclcpp rclcpp-components std-msgs ublox-ubx-interfaces ublox-ubx-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a ublox_gnss node for a u-blox GPS GNSS receiver using Gen 9 UBX Protocol'';
    license = with lib.licenses; [ asl20 ];
  };
}
