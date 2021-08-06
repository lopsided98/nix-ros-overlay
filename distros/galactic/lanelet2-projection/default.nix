
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, geographiclib, gtest, lanelet2-io, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-galactic-lanelet2-projection";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/galactic/lanelet2_projection/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "cd528b555940160b5aac2bfeaff8038e54c04c28df03de6d8d46c74189a6f4e2";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ geographiclib lanelet2-io mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Lanelet2 projection library for lat/lon to local x/y conversion'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
