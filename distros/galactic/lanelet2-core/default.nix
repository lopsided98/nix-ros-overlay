
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-galactic-lanelet2-core";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/galactic/lanelet2_core/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "b0a84915cf69ef9b1886a93a83134713406811826944225f9350154fbb812ac2";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost eigen mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Lanelet2 core module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
