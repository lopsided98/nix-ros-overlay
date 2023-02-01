
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python3Packages, pythonPackages, rclpy, rmf-building-map-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rmf-building-map-tools";
  version = "1.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmf_traffic_editor-release";
        rev = "release/foxy/rmf_building_map_tools/1.4.0-1";
        sha256 = "sha256-EnMTdw2WSNIgyf9oWqr/RvwB2uUsLU/VeeUdNv7zXO8=";
      };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyproj python3Packages.pyyaml python3Packages.requests python3Packages.shapely rclpy rmf-building-map-msgs std-msgs ];

  meta = {
    description = ''RMF Building map tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
