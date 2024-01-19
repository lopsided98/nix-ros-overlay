
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rclpy, rmw, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-interactive-markers";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/interactive_markers-release/archive/release/humble/interactive_markers/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "eda1dae4ff2339615b0951e5c45a5118823da5a2c3d3f149670bc7f524aa0d7c";
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
