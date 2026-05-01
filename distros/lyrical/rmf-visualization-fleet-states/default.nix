
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rmf-fleet-msgs, rmf-utils, rmf-visualization-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-visualization-fleet-states";
  version = "2.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/lyrical/rmf_visualization_fleet_states/2.5.1-3.tar.gz";
    name = "2.5.1-3.tar.gz";
    sha256 = "4e4512fe0ecb606990e0d830a626298769fc14e878ba71ed05954463f0068d76";
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
