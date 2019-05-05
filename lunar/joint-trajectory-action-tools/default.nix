
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, joint-trajectory-action, trajectory-msgs, catkin, rospy, roslib }:
buildRosPackage {
  pname = "ros-lunar-joint-trajectory-action-tools";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/lunar/joint_trajectory_action_tools/0.0.11-0.tar.gz;
    sha256 = "98eb0a37dda77b43457a47e9116683d22c3eb7842bb110e44fff65f215269f8d";
  };

  buildInputs = [ pr2-controllers-msgs joint-trajectory-action trajectory-msgs rospy roslib ];
  propagatedBuildInputs = [ pr2-controllers-msgs joint-trajectory-action trajectory-msgs rospy roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''joint_trajectory_action_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
