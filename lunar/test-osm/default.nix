
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osm-cartography, catkin, geodesy, geographic-msgs, route-network }:
buildRosPackage {
  pname = "ros-lunar-test-osm";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/open_street_map-release/archive/release/lunar/test_osm/0.2.4-0.tar.gz;
    sha256 = "f56226c9cc20f857b30e0e1912f74858e25873f1a54ee9801f483e0aa4aa0b36";
  };

  buildInputs = [ geodesy osm-cartography geographic-msgs route-network ];
  propagatedBuildInputs = [ geodesy osm-cartography geographic-msgs route-network ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These are regression tests for the osm_cartography and
     route_network packages. They are packaged separately to avoid
     unnecessary implementation dependencies.'';
    #license = lib.licenses.BSD;
  };
}
