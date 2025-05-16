
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor-test-maps";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor_test_maps/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "d6d472d53f857c15792005f691294a385aad42c48237b6448072c78c3ca6d24c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "Some test maps for traffic_editor and rmf_building_map_tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
