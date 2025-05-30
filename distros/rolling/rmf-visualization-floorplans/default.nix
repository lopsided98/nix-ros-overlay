
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometry-msgs, nav-msgs, opencv, rclcpp, rclcpp-components, rmf-building-map-msgs, rmf-utils, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-floorplans";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_floorplans/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "c295d1d28d27199ea182a6d7767502f9bd32d1bcda66c90a7872d6a6e32a6619";
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
