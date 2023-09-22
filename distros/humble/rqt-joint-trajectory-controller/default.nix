
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-rqt-joint-trajectory-controller";
  version = "2.25.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/rqt_joint_trajectory_controller/2.25.0-1.tar.gz";
    name = "2.25.0-1.tar.gz";
    sha256 = "6295081b93330d33e8e9c7d76a4709c9f514d8ec140748d7490f18a6416dd5d9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py trajectory-msgs ];

  meta = {
    description = ''Graphical frontend for interacting with joint_trajectory_controller instances.'';
    license = with lib.licenses; [ asl20 ];
  };
}
