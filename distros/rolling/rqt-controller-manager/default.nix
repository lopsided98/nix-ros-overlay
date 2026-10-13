
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, launch-testing, launch-testing-ros, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-controller-manager";
  version = "6.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/rqt_controller_manager/6.12.0-1.tar.gz";
    name = "6.12.0-1.tar.gz";
    sha256 = "05723a1ac31184f2a613f61895f082eb972122017147aceb4d59f8f1236d7553";
  };

  buildType = "ament_python";
  checkInputs = [ launch-testing launch-testing-ros ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Graphical frontend for interacting with the controller manager.";
    license = with lib.licenses; [ asl20 ];
  };
}
