
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, control-msgs, trajectory-msgs, catkin, rqt-gui, controller-manager-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-rqt-joint-trajectory-controller";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/rqt_joint_trajectory_controller/0.14.3-0.tar.gz;
    sha256 = "1b94493ec19a1df23d2d8f51dd7edd53bb8481ff389018b9ca2681c575493706";
  };

  propagatedBuildInputs = [ rqt-gui-py controller-manager-msgs control-msgs rospy trajectory-msgs rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical frontend for interacting with joint_trajectory_controller instances.'';
    #license = lib.licenses.BSD;
  };
}
