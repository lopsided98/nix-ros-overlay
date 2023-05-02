
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, geometry-msgs, rclcpp, rclcpp-components, rmf-obstacle-msgs, rmf-utils, rmf-visualization-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-obstacles";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_obstacles/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "027086cbd64072a9219f6e26bb8a027b2a8a314e5a051343166fef2b1416b70e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-uncrustify rmf-utils ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-components rmf-obstacle-msgs rmf-visualization-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A visualizer for obstacles in RMF'';
    license = with lib.licenses; [ asl20 ];
  };
}
