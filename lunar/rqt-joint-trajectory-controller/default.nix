
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, control-msgs, trajectory-msgs, catkin, rqt-gui, controller-manager-msgs, rospy }:
buildRosPackage {
  pname = "ros-lunar-rqt-joint-trajectory-controller";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/rqt_joint_trajectory_controller/0.13.4-0.tar.gz;
    sha256 = "af6c32a26924e44fe98ae6fde98bd7aa396fc7c56de3d095952b58f1b43f2339";
  };

  propagatedBuildInputs = [ rqt-gui-py control-msgs trajectory-msgs rqt-gui controller-manager-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical frontend for interacting with joint_trajectory_controller instances.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
