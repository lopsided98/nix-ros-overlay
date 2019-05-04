
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtle-actionlib, nodelet-tutorial-math, catkin, pluginlib-tutorials, actionlib-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-common-tutorials";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_tutorials-release/archive/release/kinetic/common_tutorials/0.1.10-0.tar.gz;
    sha256 = "071a417d5d0201df38c9b9ca06ac0f2836b78f249397367ad704bec5d704d9ef";
  };

  propagatedBuildInputs = [ nodelet-tutorial-math pluginlib-tutorials actionlib-tutorials turtle-actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that contains common tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
