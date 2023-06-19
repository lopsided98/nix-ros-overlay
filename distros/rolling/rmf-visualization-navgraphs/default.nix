
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-components, rmf-building-map-msgs, rmf-fleet-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-visualization-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-navgraphs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_navgraphs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "d11922b8ee333f27fe31d33624b25a9b71d1704877311fab6b522b18c0c6ca38";
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
