
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtle-actionlib, pluginlib-tutorials, catkin, actionlib-tutorials, nodelet-tutorial-math }:
buildRosPackage {
  pname = "ros-kinetic-common-tutorials";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/kinetic/common_tutorials/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "071a417d5d0201df38c9b9ca06ac0f2836b78f249397367ad704bec5d704d9ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtle-actionlib actionlib-tutorials pluginlib-tutorials nodelet-tutorial-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that contains common tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
