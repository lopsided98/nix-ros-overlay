
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-humble-lanelet2-maps";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/lanelet2_maps/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "f268dd95d05c02d21aab56cf57834ab3b953d0789f06f799522d6a525008531e";
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
