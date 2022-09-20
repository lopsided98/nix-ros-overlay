
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-foxy-lanelet2-traffic-rules";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/foxy/lanelet2_traffic_rules/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "140a75c2da25cf7db53ecf533816122ced186ded6c08539e696a6b87e854aa64";
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
