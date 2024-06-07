
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-visualization-building-systems, rmf-visualization-fleet-states, rmf-visualization-floorplans, rmf-visualization-navgraphs, rmf-visualization-obstacles, rmf-visualization-rviz2-plugins, rmf-visualization-schedule }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "8678d0d48095b9a2ab72e7f3ec5afbec19c213ebca72165247d5557a91f46d3f";
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
