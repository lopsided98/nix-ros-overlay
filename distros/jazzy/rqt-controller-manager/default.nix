
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, launch-testing, launch-testing-ros, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-jazzy-rqt-controller-manager";
  version = "4.47.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/rqt_controller_manager/4.47.0-1.tar.gz";
    name = "4.47.0-1.tar.gz";
    sha256 = "17c452e197e84191685dfd267674fafa08199eb98ed9e9a5e7d17c4459b53434";
  };

  buildType = "ament_python";
  checkInputs = [ launch-testing launch-testing-ros ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Graphical frontend for interacting with the controller manager.";
    license = with lib.licenses; [ asl20 ];
  };
}
