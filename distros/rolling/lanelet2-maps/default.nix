
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-maps";
  version = "1.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_maps/1.1.1-4.tar.gz";
    name = "1.1.1-4.tar.gz";
    sha256 = "82c2114d9a7ec0e3379e938b458a898db844f21de0b9a05888b06967303b9cf3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Example maps in the lanelet2-format'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
