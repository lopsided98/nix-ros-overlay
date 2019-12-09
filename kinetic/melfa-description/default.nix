
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, xacro, robot-state-publisher, catkin, rviz, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-melfa-description";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/tork-a/melfa_robot-release/archive/release/kinetic/melfa_description/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "0327a6e55458e966641c3467b66ee59515573e3bcfc06a6cb7ddfabc13b72086";
  };

  buildType = "catkin";
  buildInputs = [ rviz xacro ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ robot-state-publisher joint-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The melfa_description package'';
    license = with lib.licenses; [ asl20 "CC-BY-SA" ];
  };
}
