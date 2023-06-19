
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager-msgs, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-iron-rqt-controller-manager";
  version = "3.12.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/rqt_controller_manager/3.12.1-2.tar.gz";
    name = "3.12.1-2.tar.gz";
    sha256 = "28d1e604e0bd429034a8a7496cf9e16ec2bb38a89c1315084cf0cc69c7b0aa7c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''Graphical frontend for interacting with the controller manager.'';
    license = with lib.licenses; [ asl20 ];
  };
}
