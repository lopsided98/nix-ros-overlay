
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, geometry-msgs, rclcpp, rclcpp-components, rmf-obstacle-msgs, rmf-utils, rmf-visualization-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-rmf-visualization-obstacles";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/iron/rmf_visualization_obstacles/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "2e762b83a100174536be38131b6d6215e6e57141d47d19a8c12b9e09d15536d7";
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
