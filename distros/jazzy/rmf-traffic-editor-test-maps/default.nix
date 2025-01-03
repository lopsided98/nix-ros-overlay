
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-jazzy-rmf-traffic-editor-test-maps";
  version = "1.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/jazzy/rmf_traffic_editor_test_maps/1.9.1-1.tar.gz";
    name = "1.9.1-1.tar.gz";
    sha256 = "604fabefd6fd0eeb4ce5df4978e9e128db393d9a5b229931cee7dd1f4d66d90b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "Some test maps for traffic_editor and rmf_building_map_tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
