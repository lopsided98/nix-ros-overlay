
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-openslam-gmapping";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openslam_gmapping-release/archive/release/melodic/openslam_gmapping/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "9b61107d88d219e52ecb210abcb44d5248c760182c4c6bafd39beab1f5c78f5f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The catkinized verseion of openslam_gmapping package (https://github.com/OpenSLAM-org/openslam_gmapping/tree/79ef0b0e6d9a12d6390ae64c4c00d37d776abefb)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
