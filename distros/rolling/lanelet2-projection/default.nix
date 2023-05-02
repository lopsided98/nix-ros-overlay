
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, geographiclib, gtest, lanelet2-io, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-projection";
  version = "1.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_projection/1.1.1-4.tar.gz";
    name = "1.1.1-4.tar.gz";
    sha256 = "7fedcfa16f9ce43ed6f5d50bdbe40df446026928d78e99124fa66d41faab2635";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ geographiclib lanelet2-io mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Lanelet2 projection library for lat/lon to local x/y conversion'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
