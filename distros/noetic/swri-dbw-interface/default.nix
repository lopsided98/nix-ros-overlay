
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-swri-dbw-interface";
  version = "2.13.5-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_dbw_interface/2.13.5-1.tar.gz";
    name = "2.13.5-1.tar.gz";
    sha256 = "3c1088947e1bf269c6cccf92faa0134dee72d6941db88b20745289c32e3550d9";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
