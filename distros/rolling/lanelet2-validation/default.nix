
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-validation";
  version = "1.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_validation/1.1.1-4.tar.gz";
    name = "1.1.1-4.tar.gz";
    sha256 = "a71abf4faafe997524565f6d96f3317299d1a299f39ef477419ceea7ca2e4bc2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest lanelet2-maps ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-io lanelet2-projection lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Package for sanitizing lanelet maps'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
