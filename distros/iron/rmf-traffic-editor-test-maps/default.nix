
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-iron-rmf-traffic-editor-test-maps";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/iron/rmf_traffic_editor_test_maps/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "1ae1bc1c4e35bedce6476d06dd7e602923632764f2f16f603a221ed1277aafcc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''Some test maps for traffic_editor and rmf_building_map_tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
