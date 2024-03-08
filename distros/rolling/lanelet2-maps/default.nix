
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-maps";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_maps/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "300bf4526628d67e9682082a9125b9aa1e20d731c03e629210cb037c9e0bbe92";
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
