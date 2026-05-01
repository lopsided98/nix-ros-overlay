
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, mrt-cmake-modules, pugixml }:
buildRosPackage {
  pname = "ros-lyrical-lanelet2-io";
  version = "1.2.1-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/lyrical/lanelet2_io/1.2.1-8.tar.gz";
    name = "1.2.1-8.tar.gz";
    sha256 = "2573dba5d831eae48069bd6ccc47074f30d047b9502fc7398301a784ae960f37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core mrt-cmake-modules pugixml ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Parser/Writer module for lanelet2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
