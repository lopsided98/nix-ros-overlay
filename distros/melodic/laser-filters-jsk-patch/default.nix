
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, filters, git, laser-filters, laser-geometry, mk }:
buildRosPackage {
  pname = "ros-melodic-laser-filters-jsk-patch";
  version = "2.1.22-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/laser_filters_jsk_patch/2.1.22-1.tar.gz";
    name = "2.1.22-1.tar.gz";
    sha256 = "5fb7cc733051f087d74e9345de022ecbacdc5d7ce500cfe084d2b79614c7e533";
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
