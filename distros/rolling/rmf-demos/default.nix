
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-building-map-tools, rmf-demos-assets, rmf-demos-fleet-adapter, rmf-demos-maps, rmf-demos-tasks, rmf-fleet-adapter, rmf-reservation-node, rmf-task-ros2, rmf-traffic-ros2, rmf-visualization, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos";
  version = "2.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos/2.8.1-2.tar.gz";
    name = "2.8.1-2.tar.gz";
    sha256 = "027a8d2310dc5dcc53e993d32a6662dfb6ea13fa866a26a8913dff0aec61f7aa";
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
