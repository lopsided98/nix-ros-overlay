
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-swri-prefix-tools";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_prefix_tools/2.8.0-0.tar.gz;
    sha256 = "46d09ae89612b3b84d929e357a45c69e5e2258f62dd7bbb0e22adfa5724dea6d";
  };

  propagatedBuildInputs = [ pythonPackages.psutil ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.'';
    #license = lib.licenses.BSD;
  };
}
