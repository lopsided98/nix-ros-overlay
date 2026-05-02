
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, geometry-msgs, rclcpp, rclcpp-components, rmf-obstacle-msgs, rmf-utils, rmf-visualization-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-obstacles";
  version = "2.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_obstacles/2.5.1-2.tar.gz";
    name = "2.5.1-2.tar.gz";
    sha256 = "48c7465d4cb4b1c48e60828d7e126d9d0592d0b15588db427144ef19bd7eb148";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-uncrustify rmf-utils ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-components rmf-obstacle-msgs rmf-visualization-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A visualizer for obstacles in RMF";
    license = with lib.licenses; [ asl20 ];
  };
}
