
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-pr2-machine";
  version = "1.12.2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/lunar/pr2_machine/1.12.2-0.tar.gz;
    sha256 = "d2cd1bd3fc987cc7efec70c4e5ca938771d3d20a5d39c4c1ebf4ba14241fc036";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the xxx.machine files that describe the different hosts a node can be spawned on. Currently there is one machine file for the pr2 robot, and one for the simulated pr2 robot.'';
    #license = lib.licenses.BSD;
  };
}
