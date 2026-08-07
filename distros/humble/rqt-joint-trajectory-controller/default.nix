
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager-msgs, launch-testing, launch-testing-ros, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-rqt-joint-trajectory-controller";
  version = "2.53.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/rqt_joint_trajectory_controller/2.53.3-1.tar.gz";
    name = "2.53.3-1.tar.gz";
    sha256 = "50c6e9075f97f89297ab1bab6769426e669664b10c5139e392af76f8be74777d";
  };

  buildType = "ament_python";
  checkInputs = [ launch-testing launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py trajectory-msgs ];

  meta = {
    description = "Graphical frontend for interacting with joint_trajectory_controller instances.";
    license = with lib.licenses; [ asl20 ];
  };
}
