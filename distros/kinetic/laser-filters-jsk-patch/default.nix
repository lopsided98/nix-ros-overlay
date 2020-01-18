
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, filters, git, laser-filters, laser-geometry, mk }:
buildRosPackage {
  pname = "ros-kinetic-laser-filters-jsk-patch";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/laser_filters_jsk_patch/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "40624aebdb09812424bbb20c11f6d86d5f202fd1d4aefd3c15052de153122d8c";
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
