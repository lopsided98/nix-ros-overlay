
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager-msgs, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-iron-rqt-controller-manager";
  version = "3.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/rqt_controller_manager/3.15.0-1.tar.gz";
    name = "3.15.0-1.tar.gz";
    sha256 = "1286a8380d1d8f0b3f8c9e3840cb7d1f37988c1d03eb0ad3c1af84a3ba4fe3bc";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''Graphical frontend for interacting with the controller manager.'';
    license = with lib.licenses; [ asl20 ];
  };
}
