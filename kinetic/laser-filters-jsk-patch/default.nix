
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, cmake-modules, mk, git, catkin, laser-filters, laser-geometry }:
buildRosPackage {
  pname = "ros-kinetic-laser-filters-jsk-patch";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/laser_filters_jsk_patch/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "2b72e9eb2f2478c961262b6fefea4f886039b08f5e3a2e67e6841948ad638742";
  };

  buildType = "catkin";
  buildInputs = [ filters cmake-modules mk git laser-filters laser-geometry ];
  propagatedBuildInputs = [ filters laser-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''laser_filters_jsk_patch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
