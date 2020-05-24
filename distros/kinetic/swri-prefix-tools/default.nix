
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-swri-prefix-tools";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_prefix_tools/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "ea7711d89439e9c2ea9fecb20e21f3f777053b2d5dc6d5a4ee81b6b44ac882cd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.psutil ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
