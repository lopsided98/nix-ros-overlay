
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, geographiclib, gtest, lanelet2-io, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-foxy-lanelet2-projection";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/foxy/lanelet2_projection/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "0d23c72283936308cef58f2dfe26efa8c6fa9d21245bce67e47eb5cd26efce68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ geographiclib lanelet2-io mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Lanelet2 projection library for lat/lon to local x/y conversion'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
