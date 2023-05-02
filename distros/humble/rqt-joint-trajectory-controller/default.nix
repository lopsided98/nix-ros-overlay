
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-rqt-joint-trajectory-controller";
  version = "2.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/rqt_joint_trajectory_controller/2.17.3-1.tar.gz";
    name = "2.17.3-1.tar.gz";
    sha256 = "6586cbe3a23af492d2b07a31589d72cdff602131b940e7f239f5aae726bc1a27";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py trajectory-msgs ];

  meta = {
    description = ''Graphical frontend for interacting with joint_trajectory_controller instances.'';
    license = with lib.licenses; [ asl20 ];
  };
}
