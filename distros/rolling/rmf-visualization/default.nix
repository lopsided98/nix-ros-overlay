
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-visualization-building-systems, rmf-visualization-fleet-states, rmf-visualization-floorplans, rmf-visualization-navgraphs, rmf-visualization-obstacles, rmf-visualization-rviz2-plugins, rmf-visualization-schedule }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "02a9a00013b5c548ab68f0ec971850503ebb472432ff12ee914498db09859be7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch-xml rmf-visualization-building-systems rmf-visualization-fleet-states rmf-visualization-floorplans rmf-visualization-navgraphs rmf-visualization-obstacles rmf-visualization-rviz2-plugins rmf-visualization-schedule ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing a single launch file to bringup various visualizations";
    license = with lib.licenses; [ asl20 ];
  };
}
