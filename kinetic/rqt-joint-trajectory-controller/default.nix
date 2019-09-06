
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, control-msgs, trajectory-msgs, catkin, rqt-gui, controller-manager-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rqt-joint-trajectory-controller";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/rqt_joint_trajectory_controller/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "6870251fde88d2b747a3aa2fd4d0fbf84d69e65cf40bb11fd05e4cc505dee53f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui-py control-msgs trajectory-msgs rqt-gui controller-manager-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical frontend for interacting with joint_trajectory_controller instances.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
