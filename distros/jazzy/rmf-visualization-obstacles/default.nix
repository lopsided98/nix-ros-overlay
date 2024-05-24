
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, geometry-msgs, rclcpp, rclcpp-components, rmf-obstacle-msgs, rmf-utils, rmf-visualization-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rmf-visualization-obstacles";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/jazzy/rmf_visualization_obstacles/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "5f2bcf4f2adf0b4688544e18c7a0e10504b9d970e6387456625fcd8ba3e8191c";
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
