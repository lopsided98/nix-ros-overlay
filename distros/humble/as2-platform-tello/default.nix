
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, eigen, geometry-msgs, nav-msgs, rclcpp, rclpy, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-platform-tello";
  version = "1.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/as2_platform_tello-release/archive/release/humble/as2_platform_tello/1.1.0-4.tar.gz";
    name = "1.1.0-4.tar.gz";
    sha256 = "5573b1494b2bdbe72336f62ab82cad8993eaffdd2bebc66038ca9fd598bd85bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-msgs eigen geometry-msgs nav-msgs rclcpp rclpy sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package to communicate DJI Tello drones with Aerostack2 framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
