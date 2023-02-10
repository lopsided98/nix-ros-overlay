
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographiclib, gtest, lanelet2-io, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-projection";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_projection/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "0c3addfe614636a1ec9f366c9cd15f92ed61320ea4b6cc9cb8e20370d1b32a2f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ geographiclib lanelet2-io mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Lanelet2 projection library for lat/lon to local x/y conversion'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
