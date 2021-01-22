
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-maps";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_maps/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "606cfe35ab43bfeca8abb7213e030056dc3a4eb920f49c59f5add39ab04aa7ec";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Example maps in the lanelet2-format'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
