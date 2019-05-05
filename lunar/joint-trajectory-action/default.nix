
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, trajectory-msgs, catkin, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-lunar-joint-trajectory-action";
  version = "1.10.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/lunar/joint_trajectory_action/1.10.15-0.tar.gz;
    sha256 = "9b085cd3b1da41047fe90cce4a404afe366edc03135d8a8d5ec8a068128a525e";
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
