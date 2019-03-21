
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-pr2-machine";
  version = "1.12.3";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/melodic/pr2_machine/1.12.3-0.tar.gz;
    sha256 = "6f00fa41d1506fb75a2fedc3beabf6d3811d73c8a8a4da211714e3591f458021";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the xxx.machine files that describe the different hosts a node can be spawned on. Currently there is one machine file for the pr2 robot, and one for the simulated pr2 robot.'';
    #license = lib.licenses.BSD;
  };
}
