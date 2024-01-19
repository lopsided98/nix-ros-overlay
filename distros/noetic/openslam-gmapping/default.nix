
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-openslam-gmapping";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openslam_gmapping-release/archive/release/noetic/openslam_gmapping/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "46b85b5f979f3ab7a93f0f9ddcbd4aad10cc493d137e8d5b68984ecc66e4c815";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The catkinized verseion of openslam_gmapping package (https://github.com/OpenSLAM-org/openslam_gmapping/tree/79ef0b0e6d9a12d6390ae64c4c00d37d776abefb)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
