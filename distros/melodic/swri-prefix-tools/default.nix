
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-swri-prefix-tools";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_prefix_tools/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "f642ac0679c8c34680f80e14b693dadaa281116afe09752a082fb5e85f86cb57";
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
