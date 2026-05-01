
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-map-tools, rmf-demos-assets, rmf-demos-fleet-adapter, rmf-demos-maps, rmf-demos-tasks, rmf-fleet-adapter, rmf-reservation-node, rmf-task-ros2, rmf-traffic-ros2, rmf-visualization, rviz2 }:
buildRosPackage {
  pname = "ros-lyrical-rmf-demos";
  version = "2.8.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/lyrical/rmf_demos/2.8.2-4.tar.gz";
    name = "2.8.2-4.tar.gz";
    sha256 = "7122c0e3f889ad4743e6d5685e3510da4c82b32f878dc8cfc7ab5045182acc7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch-xml rmf-building-map-tools rmf-demos-assets rmf-demos-fleet-adapter rmf-demos-maps rmf-demos-tasks rmf-fleet-adapter rmf-reservation-node rmf-task-ros2 rmf-traffic-ros2 rmf-visualization rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common launch files for RMF demos";
    license = with lib.licenses; [ asl20 ];
  };
}
