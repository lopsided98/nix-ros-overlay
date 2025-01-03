
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-core";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_core/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "401d838c176962d1e8499aa41ed09f7baa94ddea7f1869c3a296a471e4ecc712";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost eigen mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = "Lanelet2 core module";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
