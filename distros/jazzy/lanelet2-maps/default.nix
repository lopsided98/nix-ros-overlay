
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-jazzy-lanelet2-maps";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/jazzy/lanelet2_maps/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "95d5b2745537fa0d9d4ee3a7c0c08366878669e9f5354984bd8c0dc2aad92a59";
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
