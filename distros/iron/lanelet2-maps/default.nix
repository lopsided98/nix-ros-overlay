
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-iron-lanelet2-maps";
  version = "1.1.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/iron/lanelet2_maps/1.1.1-5.tar.gz";
    name = "1.1.1-5.tar.gz";
    sha256 = "867d9545d90f5e05fe88fd0170a7223e1c239f9b9cc7f7ca177f3bbf76a27c77";
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
