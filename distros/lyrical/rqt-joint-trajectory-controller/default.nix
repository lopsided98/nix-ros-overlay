
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rqt-joint-trajectory-controller";
  version = "6.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/rqt_joint_trajectory_controller/6.6.0-3.tar.gz";
    name = "6.6.0-3.tar.gz";
    sha256 = "fa361774af0015e4e2e0388f4cc1ee8dcb5bc48994ea7ba458ac98631767904b";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py trajectory-msgs ];

  meta = {
    description = "Graphical frontend for interacting with joint_trajectory_controller instances.";
    license = with lib.licenses; [ asl20 ];
  };
}
