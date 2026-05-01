
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, cmake, diagnostic-msgs, geographic-msgs, geometry-msgs, gps-msgs, mola-common, mola-kernel, mola-msgs, mrpt-libmaps, mrpt-libros-bridge, mrpt-nav-interfaces, nav-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mola-bridge-ros2";
  version = "2.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_bridge_ros2/2.7.0-3.tar.gz";
    name = "2.7.0-3.tar.gz";
    sha256 = "2ab69ee7b4c2644f8b596ee0884082c3b0b34987610f47c9af6c074b19e6632b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ diagnostic-msgs geographic-msgs geometry-msgs gps-msgs mola-common mola-kernel mola-msgs mrpt-libmaps mrpt-libros-bridge mrpt-nav-interfaces nav-msgs rclcpp sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = "Bidirectional bridge ROS2-MOLA";
    license = with lib.licenses; [ bsd3 ];
  };
}
