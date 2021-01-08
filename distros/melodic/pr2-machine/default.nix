
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-pr2-machine";
  version = "1.12.4-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/melodic/pr2_machine/1.12.4-1.tar.gz";
    name = "1.12.4-1.tar.gz";
    sha256 = "57a14290871112df082f51820a8adbd11dbacb0a38440c11968ec0ca80104ef4";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the xxx.machine files that describe the different hosts a node can be spawned on. Currently there is one machine file for the pr2 robot, and one for the simulated pr2 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
