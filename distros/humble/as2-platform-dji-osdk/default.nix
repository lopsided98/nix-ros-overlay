
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, geometry-msgs, libusb1, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-platform-dji-osdk";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/as2_platform_dji_osdk-release/archive/release/humble/as2_platform_dji_osdk/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "884f71791f5fc652d1e77aca57844402baedf7313e1c8fe92c45f7cc7af0fa49";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-cpp as2-core as2-msgs geometry-msgs libusb1 nav-msgs rclcpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package to communicate DJI OSDK with Aerostack2 framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
