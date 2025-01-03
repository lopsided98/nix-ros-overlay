
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, mrt-cmake-modules, pugixml }:
buildRosPackage {
  pname = "ros-jazzy-lanelet2-io";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/jazzy/lanelet2_io/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "37b66d1c67cfd35675fc05ad9091b5d049e02be80ed83bd79c65945f706b5f58";
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
