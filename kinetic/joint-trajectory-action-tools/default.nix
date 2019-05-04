
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, joint-trajectory-action, trajectory-msgs, catkin, rospy, roslib }:
buildRosPackage {
  pname = "ros-kinetic-joint-trajectory-action-tools";
  version = "0.0.10";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/joint_trajectory_action_tools/0.0.10-0.tar.gz;
    sha256 = "01e0fc8eb481171834dc348f08300ef53b9fc197584a19e88a869617bef487f5";
  };

  buildInputs = [ pr2-controllers-msgs joint-trajectory-action trajectory-msgs rospy roslib ];
  propagatedBuildInputs = [ pr2-controllers-msgs joint-trajectory-action trajectory-msgs rospy roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''joint_trajectory_action_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
