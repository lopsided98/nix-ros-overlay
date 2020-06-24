
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-swri-prefix-tools";
  version = "2.13.6-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_prefix_tools/2.13.6-1.tar.gz";
    name = "2.13.6-1.tar.gz";
    sha256 = "98a04cc887bd297549d5a8c90935c213bcb0c07c20761131b6c9126d7e9b07f8";
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
