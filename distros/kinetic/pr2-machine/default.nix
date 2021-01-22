
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-pr2-machine";
  version = "1.12.4-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/kinetic/pr2_machine/1.12.4-1.tar.gz";
    name = "1.12.4-1.tar.gz";
    sha256 = "a8801b2076bce7bdeef9fcebaf7b9d710870ad4d650d5dc5ed7c367b4db9ec49";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the xxx.machine files that describe the different hosts a node can be spawned on. Currently there is one machine file for the pr2 robot, and one for the simulated pr2 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
