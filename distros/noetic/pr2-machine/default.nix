
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-pr2-machine";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/noetic/pr2_machine/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "98517069d84d60a45902a9452feb77c1814b4440063232696cc31b248ff58607";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the xxx.machine files that describe the different hosts a node can be spawned on. Currently there is one machine file for the pr2 robot, and one for the simulated pr2 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
