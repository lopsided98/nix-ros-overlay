
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, launch-testing, launch-testing-ros, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-controller-manager";
  version = "6.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/rqt_controller_manager/6.10.0-1.tar.gz";
    name = "6.10.0-1.tar.gz";
    sha256 = "bb4097e895cf19911d5089164b55d42df029f5a88512f6f1f9e6e28f0a08ae74";
  };

  buildType = "ament_python";
  checkInputs = [ launch-testing launch-testing-ros ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Graphical frontend for interacting with the controller manager.";
    license = with lib.licenses; [ asl20 ];
  };
}
