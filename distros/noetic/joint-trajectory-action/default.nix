
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, pr2-controllers-msgs, roscpp, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-trajectory-action";
  version = "1.10.18-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/noetic/joint_trajectory_action/1.10.18-1.tar.gz";
    name = "1.10.18-1.tar.gz";
    sha256 = "420aea15c157faddb4abd0abda90f3b701d3549ca642c6a0435bc06d7db07136";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib pr2-controllers-msgs roscpp trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The joint_trajectory_action is a node that exposes an action interface
     to a joint trajectory controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
