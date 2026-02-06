
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-rqt-joint-trajectory-controller";
  version = "5.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/rqt_joint_trajectory_controller/5.13.0-1.tar.gz";
    name = "5.13.0-1.tar.gz";
    sha256 = "140278709fcdadaf75f558c79b0e0264145a95499fb4d8226e26deac66c8aaac";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs controller-manager-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py trajectory-msgs ];

  meta = {
    description = "Graphical frontend for interacting with joint_trajectory_controller instances.";
    license = with lib.licenses; [ asl20 ];
  };
}
