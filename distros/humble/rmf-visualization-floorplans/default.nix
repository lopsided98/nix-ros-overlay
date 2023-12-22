
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometry-msgs, nav-msgs, opencv, rclcpp, rclcpp-components, rmf-building-map-msgs, rmf-utils, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-visualization-floorplans";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/humble/rmf_visualization_floorplans/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "520d4a97f85631266b2068d94b4eacd73bdf1fcaa7006ce1050cb055d492a8d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common rmf-utils ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs opencv opencv.cxxdev rclcpp rclcpp-components rmf-building-map-msgs rmf-visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''A package to visualize the floorplans for levels in a building'';
    license = with lib.licenses; [ asl20 ];
  };
}
