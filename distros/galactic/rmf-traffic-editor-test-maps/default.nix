
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-galactic-rmf-traffic-editor-test-maps";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/galactic/rmf_traffic_editor_test_maps/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "fd5f1248fa859db07e7eddc744a72258337a7e79027abe21841d39880bb07d4a";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''Some test maps for traffic_editor and rmf_building_map_tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
