
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, gz-fuel-tools-vendor, python3Packages, pythonPackages, rclpy, rmf-building-map-msgs, rmf-site-map-msgs, sqlite, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-rmf-building-map-tools";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_building_map_tools/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "537b5d7835d8b949882b746aa6bf245a19720923b61978ee7ebdb365944c5036";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python gz-fuel-tools-vendor python3Packages.Rtree python3Packages.fiona python3Packages.pyproj python3Packages.pyyaml python3Packages.requests python3Packages.shapely rclpy rmf-building-map-msgs rmf-site-map-msgs sqlite std-msgs yaml-cpp ];

  meta = {
    description = "RMF Building map tools";
    license = with lib.licenses; [ asl20 ];
  };
}
