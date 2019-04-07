
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, rviz, robot-state-publisher, roslaunch, joint-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-melfa-description";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/tork-a/melfa_robot-release/archive/release/kinetic/melfa_description/0.0.4-0.tar.gz;
    sha256 = "0327a6e55458e966641c3467b66ee59515573e3bcfc06a6cb7ddfabc13b72086";
  };

  buildInputs = [ rviz xacro ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ rviz joint-state-publisher xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The melfa_description package'';
    #license = lib.licenses.Apache License 2.0;
  };
}
