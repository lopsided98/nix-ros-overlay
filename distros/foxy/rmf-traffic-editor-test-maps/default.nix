
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-foxy-rmf-traffic-editor-test-maps";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/foxy/rmf_traffic_editor_test_maps/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "8ce04dfe020804ad0642750aa402275a5c6ebf2e4919bc026cf5f7c78a2dff00";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''Some test maps for traffic_editor and rmf_building_map_tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
