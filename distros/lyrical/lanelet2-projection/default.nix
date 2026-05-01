
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, geographiclib, gtest, lanelet2-io, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-lyrical-lanelet2-projection";
  version = "1.2.1-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/lyrical/lanelet2_projection/1.2.1-8.tar.gz";
    name = "1.2.1-8.tar.gz";
    sha256 = "cf6c24ffd0113f5d36e59625f8142990789b0dd7f13ed10bbcd397399f80c32a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ geographiclib lanelet2-io mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Lanelet2 projection library for lat/lon to local x/y conversion";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
