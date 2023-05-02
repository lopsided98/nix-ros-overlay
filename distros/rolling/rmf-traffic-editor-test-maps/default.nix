
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor-test-maps";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor_test_maps/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "8777ac10fedfbf729b5b53f8a2b934260234c1d25c89977325ed362a22a621f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''Some test maps for traffic_editor and rmf_building_map_tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
