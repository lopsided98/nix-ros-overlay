
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-pr2-machine";
  version = "1.12.2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/kinetic/pr2_machine/1.12.2-0.tar.gz;
    sha256 = "6158ca9cd4b4227ad6567730b2160d24523e494e5a53e9ed8c69a8783320fc3f";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the xxx.machine files that describe the different hosts a node can be spawned on. Currently there is one machine file for the pr2 robot, and one for the simulated pr2 robot.'';
    #license = lib.licenses.BSD;
  };
}
