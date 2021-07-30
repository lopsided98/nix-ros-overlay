
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, filters, git, laser-filters, laser-geometry, mk }:
buildRosPackage {
  pname = "ros-melodic-laser-filters-jsk-patch";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/laser_filters_jsk_patch/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "3efd3a7b0b31928f8ee41e047b5a212c766bf2ad3bd8c1d7607fd13d5cfb2a28";
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
