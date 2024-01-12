
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager-msgs, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-controller-manager";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/rqt_controller_manager/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "037428d490725282195184bbf4a9a6b8a8d760bd1c83bdfb1616d89bc0147d49";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''Graphical frontend for interacting with the controller manager.'';
    license = with lib.licenses; [ asl20 ];
  };
}
