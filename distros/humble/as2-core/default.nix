
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, as2-msgs, cv-bridge, eigen, geographic-msgs, geographiclib, geometry-msgs, image-transport, nav-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-as2-core";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_core/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "a1fe13d9801f3ff459e3966353e3dc27b0e5e9947db09341323d42429f73da4d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-cmake as2-msgs cv-bridge eigen geographic-msgs geographiclib geometry-msgs image-transport nav-msgs rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aerostack2 core package which contains the basic classes of the Aerostack2 framework'';
    license = with lib.licenses; [ bsd3 ];
  };
}
