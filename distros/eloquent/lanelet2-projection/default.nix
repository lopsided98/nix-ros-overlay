
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, geographiclib, gtest, lanelet2-io, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-eloquent-lanelet2-projection";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/eloquent/lanelet2_projection/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "a8a77b94d5fdb9a7e9e0c7f097c182953e9c97d59a58949cb9330fddf84e1df3";
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
