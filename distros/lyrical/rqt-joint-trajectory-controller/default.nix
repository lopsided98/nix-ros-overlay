
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py, trajectory-msgs, urdfdom-py }:
buildRosPackage {
  pname = "ros-lyrical-rqt-joint-trajectory-controller";
  version = "6.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/rqt_joint_trajectory_controller/6.7.0-1.tar.gz";
    name = "6.7.0-1.tar.gz";
    sha256 = "5feeac301a76cd221e0e830617f96214b8e0d07db0d72794230528d84622ecfa";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py trajectory-msgs urdfdom-py ];

  meta = {
    description = "Graphical frontend for interacting with joint_trajectory_controller instances.";
    license = with lib.licenses; [ asl20 ];
  };
}
