
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rclpy, rmw, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-interactive-markers";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_markers-release/archive/release/rolling/interactive_markers/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "f9363875742af87e93271013a8e6ba345e47ec1dae76d8d2868acbaf2c8179cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rmw tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
