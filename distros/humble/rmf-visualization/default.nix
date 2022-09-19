
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, rmf-visualization-building-systems, rmf-visualization-fleet-states, rmf-visualization-rviz2-plugins, rmf-visualization-schedule }:
buildRosPackage {
  pname = "ros-humble-rmf-visualization";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/humble/rmf_visualization/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "0b0a54230796f38203f8c4ea51883160c70afc13f0d2aad1731c45f4ee4ff7b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch-xml rmf-visualization-building-systems rmf-visualization-fleet-states rmf-visualization-rviz2-plugins rmf-visualization-schedule ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing a single launch file to bringup various visualizations'';
    license = with lib.licenses; [ asl20 ];
  };
}
