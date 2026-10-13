
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, cmake, diagnostic-msgs, geographic-msgs, geometry-msgs, gps-msgs, mola-common, mola-kernel, mola-msgs, mrpt-libros-bridge, mrpt-maps, mrpt-nav-interfaces, nav-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mola-bridge-ros2";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_bridge_ros2/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "5e4837e041999a656e2077055081d6a695b1be272e01187c785908628cc4b682";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ diagnostic-msgs geographic-msgs geometry-msgs gps-msgs mola-common mola-kernel mola-msgs mrpt-libros-bridge mrpt-maps mrpt-nav-interfaces nav-msgs rclcpp sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = "Bidirectional bridge ROS2-MOLA";
    license = with lib.licenses; [ bsd3 ];
  };
}
