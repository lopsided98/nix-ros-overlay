
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, filters, git, laser-filters, laser-geometry, mk }:
buildRosPackage {
  pname = "ros-noetic-laser-filters-jsk-patch";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/laser_filters_jsk_patch/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "c5fcf6809092377e6b10c73f258b4098af90b339c83b7b2530239ba64a500f90";
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
