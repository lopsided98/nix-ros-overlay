
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, geographiclib, gtest, lanelet2-io, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-kilted-lanelet2-projection";
  version = "1.2.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/kilted/lanelet2_projection/1.2.1-7.tar.gz";
    name = "1.2.1-7.tar.gz";
    sha256 = "032f23b78c4dd935c7730dc642f72c6c3352490a234dd88746f8fdb5fb2c9d0e";
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
