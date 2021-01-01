
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geodesy, geographic-msgs, osm-cartography, route-network }:
buildRosPackage {
  pname = "ros-kinetic-test-osm";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/kinetic/test_osm/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "b77fcee167eb3d7b08205c42585aaa191e60585fb3fce3b389c733855292894e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geodesy geographic-msgs osm-cartography route-network ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These are regression tests for the osm_cartography and
     route_network packages. They are packaged separately to avoid
     unnecessary implementation dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
