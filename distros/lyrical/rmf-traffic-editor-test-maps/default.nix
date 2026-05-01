
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-lyrical-rmf-traffic-editor-test-maps";
  version = "1.14.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/lyrical/rmf_traffic_editor_test_maps/1.14.0-3.tar.gz";
    name = "1.14.0-3.tar.gz";
    sha256 = "92b12ae96c643da95f990d8d12f816ae35003abb9dc6557b069fbddd83efe9ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "Some test maps for traffic_editor and rmf_building_map_tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
