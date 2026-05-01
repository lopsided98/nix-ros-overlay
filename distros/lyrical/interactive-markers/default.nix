
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rclpy, rcutils, rmw, std-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-interactive-markers";
  version = "2.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_markers-release/archive/release/lyrical/interactive_markers/2.8.4-1.tar.gz";
    name = "2.8.4-1.tar.gz";
    sha256 = "8765d58aa6b0c354014700f1486bda3b8a4cb2086145bb5298ec383f90aaa504";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common builtin-interfaces ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclcpp rclpy rcutils rmw std-msgs tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "3D interactive marker communication library for RViz and similar tools.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
