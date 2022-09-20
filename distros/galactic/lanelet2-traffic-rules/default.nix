
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-galactic-lanelet2-traffic-rules";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/galactic/lanelet2_traffic_rules/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "8ad0c5f333f79f1b842a5e4f5c9c4cca5e08b8c7480505f7988f435c28ea4e7f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Package for interpreting traffic rules in a lanelet map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
