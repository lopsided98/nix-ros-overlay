
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, trajectory-msgs, catkin, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-joint-trajectory-action";
  version = "1.10.17-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/joint_trajectory_action/1.10.17-1.tar.gz;
    sha256 = "eaf127a1c131ce422b9bba23fad9a20d278360d80d23ae389a021c15e962f053";
  };

  buildInputs = [ pr2-controllers-msgs trajectory-msgs roscpp actionlib ];
  propagatedBuildInputs = [ pr2-controllers-msgs trajectory-msgs roscpp actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The joint_trajectory_action is a node that exposes an action interface
     to a joint trajectory controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
