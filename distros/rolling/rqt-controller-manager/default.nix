
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-controller-manager";
  version = "4.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/rqt_controller_manager/4.14.0-1.tar.gz";
    name = "4.14.0-1.tar.gz";
    sha256 = "f8fb9ca2e23f8bb551d4e414fd25ff524f77735f9d49232a8fe8edcc5df79fb2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Graphical frontend for interacting with the controller manager.";
    license = with lib.licenses; [ asl20 ];
  };
}
