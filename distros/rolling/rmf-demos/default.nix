
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-map-tools, rmf-demos-assets, rmf-demos-fleet-adapter, rmf-demos-maps, rmf-demos-tasks, rmf-fleet-adapter, rmf-task-ros2, rmf-traffic-ros2, rmf-visualization, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "55eadc9c51b64eedd35e0b4d1287f6357f7f529ba4f377a5cb5a3b486b4ac7d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch-xml rmf-building-map-tools rmf-demos-assets rmf-demos-fleet-adapter rmf-demos-maps rmf-demos-tasks rmf-fleet-adapter rmf-task-ros2 rmf-traffic-ros2 rmf-visualization rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common launch files for RMF demos";
    license = with lib.licenses; [ asl20 ];
  };
}
