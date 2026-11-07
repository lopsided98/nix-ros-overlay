
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager-msgs, launch-testing, launch-testing-ros, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rqt-joint-trajectory-controller";
  version = "4.43.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/rqt_joint_trajectory_controller/4.43.1-1.tar.gz";
    name = "4.43.1-1.tar.gz";
    sha256 = "58b601635a22e512eb07a286ce96ded69f8cb003b9dc47386cb5023cb19e4ca2";
  };

  buildType = "ament_python";
  checkInputs = [ launch-testing launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py trajectory-msgs ];

  meta = {
    description = "Graphical frontend for interacting with joint_trajectory_controller instances.";
    license = with lib.licenses; [ asl20 ];
  };
}
