
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-trajectory-action, pr2-controllers-msgs, roslib, rospy, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-joint-trajectory-action-tools";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/joint_trajectory_action_tools/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "cff217c086340f75d87f968fe96ab08c5485fb39779aa8d1af8699bcb993f356";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-trajectory-action pr2-controllers-msgs roslib rospy trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''joint_trajectory_action_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
