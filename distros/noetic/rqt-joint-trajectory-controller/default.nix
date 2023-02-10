
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-manager-msgs, python-qt-binding, python3Packages, qt-gui, rospy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-joint-trajectory-controller";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/rqt_joint_trajectory_controller/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "a05b3a672cd5e090031c165489f0ec0dfe8e86d52b89df3ed4b3dc6732f74a04";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rospy rqt-gui rqt-gui-py trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical frontend for interacting with joint_trajectory_controller instances.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
