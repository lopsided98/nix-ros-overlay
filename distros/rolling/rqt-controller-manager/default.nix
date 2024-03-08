
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager-msgs, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-controller-manager";
  version = "4.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/rqt_controller_manager/4.5.0-2.tar.gz";
    name = "4.5.0-2.tar.gz";
    sha256 = "f2f2b8e091e5a0c537b85382cefb69e459e25ee46bfde14f99c55b7136cfecf2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager-msgs rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''Graphical frontend for interacting with the controller manager.'';
    license = with lib.licenses; [ asl20 ];
  };
}
