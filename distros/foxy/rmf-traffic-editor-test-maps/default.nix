
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-foxy-rmf-traffic-editor-test-maps";
  version = "1.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmf_traffic_editor-release";
        rev = "release/foxy/rmf_traffic_editor_test_maps/1.4.0-1";
        sha256 = "sha256-X9F+9NaAAQERryKP4W9r7mml8IJMZInQmSVnuPpF5+A=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''Some test maps for traffic_editor and rmf_building_map_tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
