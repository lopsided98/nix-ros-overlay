
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, as2-msgs, eigen, geometry-msgs, nav-msgs, rclcpp, rclpy, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-platform-tello";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_tello/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "20d433b6eb9b53ed9cc5f547e1332842c5c67e19f8c86742eb1417ebdd9ce69f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ as2-core as2-msgs eigen geometry-msgs nav-msgs rclcpp rclpy sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package to communicate DJI Tello drones with Aerostack2 framework'';
    license = with lib.licenses; [ bsd3 ];
  };
}
