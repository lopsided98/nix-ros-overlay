
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-kilted-rmf-traffic-editor-test-maps";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/kilted/rmf_traffic_editor_test_maps/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "cc163201bfdae58dbb86a66a4883d7232e88d1d949d5797eed7ee0dc539147c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "Some test maps for traffic_editor and rmf_building_map_tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
