
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages, pythonPackages, rclpy, rmf-building-map-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rmf-building-map-tools";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/foxy/rmf_building_map_tools/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "d7f8ecafd032ceed132ed18da3e0828762aba6cdc3ecf6a0d2c738d265a12158";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyproj python3Packages.pyyaml python3Packages.requests python3Packages.shapely rclpy rmf-building-map-msgs std-msgs ];

  meta = {
    description = ''RMF Building map tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
