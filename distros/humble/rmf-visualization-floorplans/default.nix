
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, nav-msgs, opencv, rclcpp, rclcpp-components, rmf-building-map-msgs, rmf-utils, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-visualization-floorplans";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/humble/rmf_visualization_floorplans/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d32bc40b05838deeb62717baf71b2dfbb1331a19af40e7452427e9c933568478";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common rmf-utils ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs opencv rclcpp rclcpp-components rmf-building-map-msgs rmf-visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to visualize the floorplans for levels in a building'';
    license = with lib.licenses; [ asl20 ];
  };
}
