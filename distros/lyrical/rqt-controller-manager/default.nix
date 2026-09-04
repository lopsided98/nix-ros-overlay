
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, launch-testing, launch-testing-ros, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-lyrical-rqt-controller-manager";
  version = "6.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/lyrical/rqt_controller_manager/6.10.0-1.tar.gz";
    name = "6.10.0-1.tar.gz";
    sha256 = "1719a26b1de0ec32e4769846c9e2ee2a672e13a97ac39050d67765e9d6bb3a3a";
  };

  buildType = "ament_python";
  checkInputs = [ launch-testing launch-testing-ros ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Graphical frontend for interacting with the controller manager.";
    license = with lib.licenses; [ asl20 ];
  };
}
