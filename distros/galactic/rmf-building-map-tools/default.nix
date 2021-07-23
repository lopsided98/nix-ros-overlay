
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages, pythonPackages, rclpy, rmf-building-map-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rmf-building-map-tools";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/galactic/rmf_building_map_tools/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "fc079670b32cedbd394597fbd7506af719c0e9403c8bcaec2c37c760a6fa80d4";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml python3Packages.requests python3Packages.shapely rclpy rmf-building-map-msgs std-msgs ];

  meta = {
    description = ''RMF Building map tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
