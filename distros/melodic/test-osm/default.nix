
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geodesy, geographic-msgs, osm-cartography, route-network }:
buildRosPackage {
  pname = "ros-melodic-test-osm";
  version = "0.2.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-geographic-info";
        repo = "open_street_map-release";
        rev = "release/melodic/test_osm/0.2.5-1";
        sha256 = "sha256-ZQ31cczUFSFyDHJuqdvijBAEgggHnuwIRHPwBxXkw4U=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geodesy geographic-msgs osm-cartography route-network ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These are regression tests for the osm_cartography and
     route_network packages. They are packaged separately to avoid
     unnecessary implementation dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
