
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-components, rmf-building-map-msgs, rmf-fleet-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-visualization-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-rmf-visualization-navgraphs";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/iron/rmf_visualization_navgraphs/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "7c3f3d299080b843c5cc85c63e10272f58d2c2ddde2948cd3465b42d946c648f";
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
