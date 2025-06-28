
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rqt-joint-trajectory-controller";
  version = "4.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/rqt_joint_trajectory_controller/4.27.0-1.tar.gz";
    name = "4.27.0-1.tar.gz";
    sha256 = "9c757a8b67f6f1f21414767c9f92c4a39724d9de0c8f240c0c42a75cd840c27e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py trajectory-msgs ];

  meta = {
    description = "Graphical frontend for interacting with joint_trajectory_controller instances.";
    license = with lib.licenses; [ asl20 ];
  };
}
