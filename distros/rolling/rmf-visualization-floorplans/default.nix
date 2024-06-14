
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometry-msgs, nav-msgs, opencv, rclcpp, rclcpp-components, rmf-building-map-msgs, rmf-utils, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-floorplans";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_floorplans/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "ea1dcf4e4de312e52ef16ff62fe4b6cdf254bb5f78ff60e0c5ba6796b97ff9f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common rmf-utils ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs opencv opencv.cxxdev rclcpp rclcpp-components rmf-building-map-msgs rmf-visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "A package to visualize the floorplans for levels in a building";
    license = with lib.licenses; [ asl20 ];
  };
}
