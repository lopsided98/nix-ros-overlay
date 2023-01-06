
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rmf-fleet-msgs, rmf-utils, rmf-visualization-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-fleet-states";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_fleet_states/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "7bd581cdca4166cdf15c52221d950b6300eb574c01aab12e45ef3fbeb2e14c13";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common rmf-utils ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rmf-fleet-msgs rmf-visualization-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to visualize positions of robots from different fleets in the a building'';
    license = with lib.licenses; [ asl20 ];
  };
}
