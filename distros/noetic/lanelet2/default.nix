
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lanelet2-core, lanelet2-examples, lanelet2-io, lanelet2-maps, lanelet2-matching, lanelet2-projection, lanelet2-python, lanelet2-routing, lanelet2-traffic-rules, lanelet2-validation, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-lanelet2";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "6febb7cf4e7df0b5d6cbbb3259dbc1e04d149413cabb897e887e8a952948430f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-examples lanelet2-io lanelet2-maps lanelet2-matching lanelet2-projection lanelet2-python lanelet2-routing lanelet2-traffic-rules lanelet2-validation ];
  nativeBuildInputs = [ catkin ros-environment ];

  meta = {
    description = ''Meta-package for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
