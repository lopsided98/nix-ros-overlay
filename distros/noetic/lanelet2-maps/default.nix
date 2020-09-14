
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-noetic-lanelet2-maps";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/lanelet2_maps/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "2d8d51ba9e921177e507ec71ce93caf76ee8ec6f3d6e880aa89940138bb063ab";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ catkin mrt-cmake-modules ];

  meta = {
    description = ''Example maps in the lanelet2-format'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
