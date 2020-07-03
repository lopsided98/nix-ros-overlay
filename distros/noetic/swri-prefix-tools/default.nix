
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-swri-prefix-tools";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_prefix_tools/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "ce9e9b764d4c1177e9f6da484f289eeb7fb7cc25da943461ada9a595f8d2ccaf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.psutil ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
