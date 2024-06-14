
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, geometry-msgs, rclcpp, rclcpp-components, rmf-obstacle-msgs, rmf-utils, rmf-visualization-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-obstacles";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_obstacles/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "3e716d6496a39b8ff77fe0c3c4831aa4df6b51cf81f77d8324fa98d2b5cf84a4";
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
