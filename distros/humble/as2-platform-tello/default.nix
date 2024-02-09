
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, as2-msgs, eigen, geometry-msgs, nav-msgs, rclcpp, rclpy, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-platform-tello";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_tello/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "b0dd87f392466a7061bf7976b5e9c83b5d0056e28b51ae6ba9a9efbd4ae54b59";
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
