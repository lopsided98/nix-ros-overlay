
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, python3Packages, rclcpp, rclpy, rcutils, rmw, std-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-interactive-markers";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_markers-release/archive/release/rolling/interactive_markers/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "3fa3d5822a41961c4697a61773315760516e72a8ac66ad8b69afdd2e8c54e9fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common builtin-interfaces python3Packages.pytest ];
  propagatedBuildInputs = [ ament-cmake-ros-core builtin-interfaces geometry-msgs rclcpp rclpy rcutils rmw std-msgs tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros-core ];

  meta = {
    description = "3D interactive marker communication library for RViz and similar tools.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
