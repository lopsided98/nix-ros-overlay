
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-swri-prefix-tools";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_prefix_tools/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "e16d46914c5fdb7963b04fabfcdf63d2f1c2bcbfac82dd9f7063ab815ef1e13d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.psutil ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
