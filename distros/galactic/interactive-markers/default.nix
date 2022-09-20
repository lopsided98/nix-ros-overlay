
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rclpy, rmw, std-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-interactive-markers";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_markers-release/archive/release/galactic/interactive_markers/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "96f556a0cab07ddce300f261bb24322a49338e19f1276666fad8eb8d2a6212f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rmw std-msgs tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
