
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, controller-manager, controller-manager-msgs, launch, launch-ros, launch-testing, launch-testing-ros, lifecycle-msgs, python-qt-binding, python3Packages, qt-gui, rcl-interfaces, rclpy, ros2service, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kilted-rqt-controller-manager";
  version = "5.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/rqt_controller_manager/5.20.0-1.tar.gz";
    name = "5.20.0-1.tar.gz";
    sha256 = "0fcb85e846b3552a6cad0a94ec0bdb2071454b9c27bad71857f20cfc763d2218";
  };

  buildType = "ament_python";
  checkInputs = [ launch launch-ros launch-testing launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python controller-manager controller-manager-msgs lifecycle-msgs python-qt-binding qt-gui rcl-interfaces rclpy ros2service rqt-gui rqt-gui-py ];

  meta = {
    description = "Graphical frontend for interacting with the controller manager.";
    license = with lib.licenses; [ asl20 ];
  };
}
