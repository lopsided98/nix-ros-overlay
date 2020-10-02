
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-eloquent-lanelet2-routing";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/eloquent/lanelet2_routing/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "649caf75c9ab152917e15c237e6ba60edca4a80c0aa4e1e51e43ab10d83e5312";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Routing module for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
