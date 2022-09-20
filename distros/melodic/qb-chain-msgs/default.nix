
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-qb-chain-msgs";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/melodic/qb_chain_msgs/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "cd8d08303aa64391babdeadf53fc68c5c25df4c3718665a703e4ffa907df6592";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''message to control end-effector pose, robot sitiffness and velocity'';
    license = with lib.licenses; [ bsd3 ];
  };
}
