
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, cmake-modules, mk, git, catkin, laser-filters, laser-geometry }:
buildRosPackage {
  pname = "ros-melodic-laser-filters-jsk-patch";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/laser_filters_jsk_patch/2.1.11-0.tar.gz;
    sha256 = "527127469522f807829b1ea468b5e060556a1b55e1023deff91c921171746dec";
  };

  buildInputs = [ filters cmake-modules mk git laser-filters laser-geometry ];
  propagatedBuildInputs = [ filters laser-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''laser_filters_jsk_patch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
