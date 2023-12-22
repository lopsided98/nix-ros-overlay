
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor-test-maps";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor_test_maps/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "064c9abe311839a2f64c992c12fb22bc0432b49163b4a129851339c0d7199150";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''Some test maps for traffic_editor and rmf_building_map_tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
