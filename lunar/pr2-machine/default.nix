
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-pr2-machine";
  version = "1.12.4-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/lunar/pr2_machine/1.12.4-1.tar.gz;
    sha256 = "7d57e59951efedb9fb1ec06c31b9a7f28da770c4eb6fb5c93042b1f9a6697da2";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the xxx.machine files that describe the different hosts a node can be spawned on. Currently there is one machine file for the pr2 robot, and one for the simulated pr2 robot.'';
    #license = lib.licenses.BSD;
  };
}
