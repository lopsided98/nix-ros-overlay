
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-swri-prefix-tools";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_prefix_tools/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "514f4ac47048c0746945050375e266216639749219ed38584f7af094ca1a921b";
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
