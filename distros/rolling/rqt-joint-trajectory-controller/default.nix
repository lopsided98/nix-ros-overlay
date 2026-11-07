
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager-msgs, launch-testing, launch-testing-ros, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py, trajectory-msgs, urdfdom-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-joint-trajectory-controller";
  version = "6.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/rqt_joint_trajectory_controller/6.10.1-1.tar.gz";
    name = "6.10.1-1.tar.gz";
    sha256 = "2262ae2a8d8aa18ef4dd38b600ae5c2ebdafb53025a9ffab84525831ded440ef";
  };

  buildType = "ament_python";
  checkInputs = [ launch-testing launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py trajectory-msgs urdfdom-py ];

  meta = {
    description = "Graphical frontend for interacting with joint_trajectory_controller instances.";
    license = with lib.licenses; [ asl20 ];
  };
}
