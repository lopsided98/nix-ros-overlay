
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, mrt-cmake-modules, pugixml }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-io";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_io/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "5a18c9a793957874dda93d2389025ba9c21a967e310ea33472711888684f6dc6";
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
