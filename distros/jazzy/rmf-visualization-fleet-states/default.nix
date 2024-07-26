
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rmf-fleet-msgs, rmf-utils, rmf-visualization-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rmf-visualization-fleet-states";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/jazzy/rmf_visualization_fleet_states/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "2b176a734f5382df6c4df9930e24510c1497b0fbfcd71cb1c0c1002d5bd11542";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common rmf-utils ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rmf-fleet-msgs rmf-visualization-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package to visualize positions of robots from different fleets in the a building";
    license = with lib.licenses; [ asl20 ];
  };
}
