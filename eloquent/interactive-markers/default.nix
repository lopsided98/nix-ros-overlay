
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclcpp, std-msgs, tf2, ament-lint-common, ament-cmake, tf2-geometry-msgs, ament-cmake-gtest, rmw, rclpy, visualization-msgs, ament-cmake-python, builtin-interfaces, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-interactive-markers";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_markers-release/archive/release/eloquent/interactive_markers/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "657a174b4b42f8170c377d7225f5b4951b7d768a81a8fd35bc925ec0a86715ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2 tf2-geometry-msgs rmw visualization-msgs rclcpp ];
  checkInputs = [ geometry-msgs ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp std-msgs tf2-geometry-msgs rclpy visualization-msgs tf2 rmw builtin-interfaces ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
