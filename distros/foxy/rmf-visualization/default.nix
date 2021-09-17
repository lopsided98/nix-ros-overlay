
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-visualization-building-systems, rmf-visualization-fleet-states, rmf-visualization-rviz2-plugins, rmf-visualization-schedule }:
buildRosPackage {
  pname = "ros-foxy-rmf-visualization";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/foxy/rmf_visualization/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "c8a75b715b70804b1820c00a9d4f4329238842fc3d0961035191c8cd06069186";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch-xml rmf-visualization-building-systems rmf-visualization-fleet-states rmf-visualization-rviz2-plugins rmf-visualization-schedule ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing a single launch file to bringup various visualizations'';
    license = with lib.licenses; [ asl20 ];
  };
}
