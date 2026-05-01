
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, gz-fuel-tools-vendor, python3Packages, rclpy, rmf-building-map-msgs, rmf-site-map-msgs, sqlite, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rmf-building-map-tools";
  version = "1.14.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/lyrical/rmf_building_map_tools/1.14.0-3.tar.gz";
    name = "1.14.0-3.tar.gz";
    sha256 = "93050155858f1564ad251f6e9a1a3c4e0dd6219bc045c3544bd68409da88d39d";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python gz-fuel-tools-vendor python3Packages.Rtree python3Packages.fiona python3Packages.pyproj python3Packages.pyyaml python3Packages.requests python3Packages.shapely rclpy rmf-building-map-msgs rmf-site-map-msgs sqlite std-msgs yaml-cpp ];

  meta = {
    description = "RMF Building map tools";
    license = with lib.licenses; [ asl20 ];
  };
}
