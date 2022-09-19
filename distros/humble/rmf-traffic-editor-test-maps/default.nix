
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-editor-test-maps";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/humble/rmf_traffic_editor_test_maps/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "45ff5844d75889f884978b1e2a13e6591fcb95feeffe0e180c93c0e218beaa93";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''Some test maps for traffic_editor and rmf_building_map_tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
