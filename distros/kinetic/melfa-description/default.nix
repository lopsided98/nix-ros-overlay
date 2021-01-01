
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, roslaunch, rostest, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-melfa-description";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/tork-a/melfa_robot-release/archive/release/kinetic/melfa_description/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "0327a6e55458e966641c3467b66ee59515573e3bcfc06a6cb7ddfabc13b72086";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The melfa_description package'';
    license = with lib.licenses; [ asl20 "CC-BY-SA" ];
  };
}
