
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, launch-testing, launch-testing-ros, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kilted-rqt-controller-manager";
  version = "5.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/rqt_controller_manager/5.17.0-1.tar.gz";
    name = "5.17.0-1.tar.gz";
    sha256 = "3f77fb10d47cdc832a54f49e28ec14ca5b294dbb8f07922f7a9d460423aede20";
  };

  buildType = "ament_python";
  checkInputs = [ launch-testing launch-testing-ros ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Graphical frontend for interacting with the controller manager.";
    license = with lib.licenses; [ asl20 ];
  };
}
