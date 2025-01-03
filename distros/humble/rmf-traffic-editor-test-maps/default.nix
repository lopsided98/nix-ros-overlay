
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-editor-test-maps";
  version = "1.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/humble/rmf_traffic_editor_test_maps/1.6.3-1.tar.gz";
    name = "1.6.3-1.tar.gz";
    sha256 = "6f8598d5de84e235ba288fac7412233bc03513ed9abe7dd59d6bde12c2cba9ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = "Some test maps for traffic_editor and rmf_building_map_tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
