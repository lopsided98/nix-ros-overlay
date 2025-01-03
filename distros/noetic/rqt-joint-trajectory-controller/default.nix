
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-manager-msgs, python-qt-binding, python3Packages, qt-gui, rospy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-joint-trajectory-controller";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/rqt_joint_trajectory_controller/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "4bad78f00e5f1e3c197bfb201dd52b291e6aa04e69dbe0eb66d692905b3cd53a";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rospy rqt-gui rqt-gui-py trajectory-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Graphical frontend for interacting with joint_trajectory_controller instances.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
