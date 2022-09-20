
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-foxy-lanelet2-routing";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/foxy/lanelet2_routing/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "bd6f9c0bb160e9ba0e1ae3672a072f1e2743a8e02d1b9e2e49a8dbbc723c3864";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Routing module for lanelet2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
