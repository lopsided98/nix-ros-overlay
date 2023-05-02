
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-visualization-building-systems, rmf-visualization-fleet-states, rmf-visualization-floorplans, rmf-visualization-navgraphs, rmf-visualization-obstacles, rmf-visualization-rviz2-plugins, rmf-visualization-schedule }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "4f0769725a288b73fa821b94b5ddfc53c089bbaa2220f2e9ca5f493da1da67d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch-xml rmf-visualization-building-systems rmf-visualization-fleet-states rmf-visualization-floorplans rmf-visualization-navgraphs rmf-visualization-obstacles rmf-visualization-rviz2-plugins rmf-visualization-schedule ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing a single launch file to bringup various visualizations'';
    license = with lib.licenses; [ asl20 ];
  };
}
