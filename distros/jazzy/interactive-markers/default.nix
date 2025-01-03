
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rclpy, rcutils, rmw, std-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-interactive-markers";
  version = "2.5.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_markers-release/archive/release/jazzy/interactive_markers/2.5.4-2.tar.gz";
    name = "2.5.4-2.tar.gz";
    sha256 = "c240349d365510e71d892fd9ac0a4234e13bed03481635380e1d79c43c117135";
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
