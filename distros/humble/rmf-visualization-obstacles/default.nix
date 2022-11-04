
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, geometry-msgs, rclcpp, rclcpp-components, rmf-obstacle-msgs, rmf-utils, rmf-visualization-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-visualization-obstacles";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/humble/rmf_visualization_obstacles/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "b6c5d77a5004de6d5c436cd57c90a55e1248e0ea88250ce6cb241d2c89676039";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-uncrustify rmf-utils ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-components rmf-obstacle-msgs rmf-visualization-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A visualizer for obstacles in RMF'';
    license = with lib.licenses; [ asl20 ];
  };
}
