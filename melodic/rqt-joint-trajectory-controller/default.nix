
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, control-msgs, trajectory-msgs, catkin, rqt-gui, controller-manager-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-rqt-joint-trajectory-controller";
  version = "0.15.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/rqt_joint_trajectory_controller/0.15.0-0.tar.gz;
    sha256 = "469f85d30f031dece7a2077959de20084d813282ce05d007ba6296f991e68763";
  };

  propagatedBuildInputs = [ rqt-gui-py control-msgs trajectory-msgs rqt-gui controller-manager-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical frontend for interacting with joint_trajectory_controller instances.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
