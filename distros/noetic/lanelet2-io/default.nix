
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gtest, lanelet2-core, mrt-cmake-modules, pugixml }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-io";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_io/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "76545c9fb3db6214f7af0ecee34458da7a883c9703a9982f907bb46821605dc4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core mrt-cmake-modules pugixml ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = "Parser/Writer module for lanelet2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
