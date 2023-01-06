
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqt-joint-trajectory-controller";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/rqt_joint_trajectory_controller/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "431fb13eb631a04c665d0883db9a307aad04769d6b8778cd90f3f5427269e8e5";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py trajectory-msgs ];

  meta = {
    description = ''Graphical frontend for interacting with joint_trajectory_controller instances.'';
    license = with lib.licenses; [ asl20 ];
  };
}
