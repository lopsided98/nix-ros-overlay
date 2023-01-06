
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-components, rmf-building-map-msgs, rmf-fleet-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-visualization-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-navgraphs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_navgraphs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "559c1e0dc893eb78c743f129b581f6df4d6b8ee7893374c10afcf641e8b13e7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common rmf-utils ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-components rmf-building-map-msgs rmf-fleet-msgs rmf-traffic rmf-traffic-ros2 rmf-visualization-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to visualiize the navigation graphs of fleets'';
    license = with lib.licenses; [ "Apache-license-2.0" ];
  };
}
