
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, pr2-controllers-msgs, roscpp, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-joint-trajectory-action";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/joint_trajectory_action/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "2713e4ea1b13fefe115aee33bc573e674fec524abeda64fdcc9d7b1261de081a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib pr2-controllers-msgs roscpp trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The joint_trajectory_action is a node that exposes an action interface
     to a joint trajectory controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
