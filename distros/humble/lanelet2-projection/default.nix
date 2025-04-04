
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, geographiclib, gtest, lanelet2-io, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-humble-lanelet2-projection";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/lanelet2_projection/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "c67160ffc6ccb55edd9b8d7bc6103124539bd53c96f83c251b1c6e50d593308f";
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
