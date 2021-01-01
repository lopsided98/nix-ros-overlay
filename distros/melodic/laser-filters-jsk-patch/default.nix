
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, filters, git, laser-filters, laser-geometry, mk }:
buildRosPackage {
  pname = "ros-melodic-laser-filters-jsk-patch";
  version = "2.1.21-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/laser_filters_jsk_patch/2.1.21-3.tar.gz";
    name = "2.1.21-3.tar.gz";
    sha256 = "6f4d3b7603c2136bcee88baed6fb17ba6f2697a36bfbdd7c89624bf9d0be19ad";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules git laser-geometry mk ];
  propagatedBuildInputs = [ filters laser-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''laser_filters_jsk_patch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
