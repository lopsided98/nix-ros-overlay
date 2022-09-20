
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geodesy, geographic-msgs, osm-cartography, route-network }:
buildRosPackage {
  pname = "ros-melodic-test-osm";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/melodic/test_osm/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "b03e821df33ef8a22f1ca6b22cdc84711879e74e55df49077beb761e72caffd4";
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
