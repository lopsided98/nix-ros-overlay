
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, geometry-msgs, libusb1, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-platform-dji-osdk";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_dji_osdk/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "1e9bcd8ad75cc70596d50c09d2806f51129691ff1f73a88ea47b9f4e5d452aed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-msgs geometry-msgs libusb1 nav-msgs rclcpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package to communicate DJI OSDK with Aerostack2 framework'';
    license = with lib.licenses; [ bsd3 ];
  };
}
