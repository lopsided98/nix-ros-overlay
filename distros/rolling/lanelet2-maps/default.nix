
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-maps";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_maps/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "ea0fbbe75752c1ab60ae59ea4d91fe3d7771dbdb4b1e647bbac0662ab7581030";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Example maps in the lanelet2-format";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
