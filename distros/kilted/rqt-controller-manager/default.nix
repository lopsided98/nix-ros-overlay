
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kilted-rqt-controller-manager";
  version = "5.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/rqt_controller_manager/5.8.1-1.tar.gz";
    name = "5.8.1-1.tar.gz";
    sha256 = "bb33b65760ba26fc1515b28f4fde4d2f0279524524212aa83c44efb9dfbe00e6";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Graphical frontend for interacting with the controller manager.";
    license = with lib.licenses; [ asl20 ];
  };
}
