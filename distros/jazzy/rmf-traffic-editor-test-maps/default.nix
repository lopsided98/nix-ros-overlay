
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-jazzy-rmf-traffic-editor-test-maps";
  version = "1.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/jazzy/rmf_traffic_editor_test_maps/1.9.2-1.tar.gz";
    name = "1.9.2-1.tar.gz";
    sha256 = "40de2254c4c238d371636e81c6e17597909de24053f5af8af64e2398634e7204";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "Some test maps for traffic_editor and rmf_building_map_tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
