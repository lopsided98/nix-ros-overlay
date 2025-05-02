
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-cmake, cmake, geometry-msgs, mola-common, mola-kernel, mola-msgs, mrpt-libmaps, mrpt-libros-bridge, mrpt-nav-interfaces, nav-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mola-bridge-ros2";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_bridge_ros2/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "a8d8684c1eb797c7307bb61fa17cdf86838b1bd7e04de4fc23cd93888911522f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ geometry-msgs mola-common mola-kernel mola-msgs mrpt-libmaps mrpt-libros-bridge mrpt-nav-interfaces nav-msgs rclcpp sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = "Bidirectional bridge ROS2-MOLA";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
