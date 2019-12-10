
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rclpy, rmw, std-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-eloquent-interactive-markers";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_markers-release/archive/release/eloquent/interactive_markers/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "657a174b4b42f8170c377d7225f5b4951b7d768a81a8fd35bc925ec0a86715ed";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rmw std-msgs tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
