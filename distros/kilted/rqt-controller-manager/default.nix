
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, controller-manager, controller-manager-msgs, launch, launch-ros, launch-testing, launch-testing-ros, lifecycle-msgs, python-qt-binding, python3Packages, qt-gui, rcl-interfaces, rclpy, ros2service, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kilted-rqt-controller-manager";
  version = "5.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/rqt_controller_manager/5.21.0-1.tar.gz";
    name = "5.21.0-1.tar.gz";
    sha256 = "aab7e8f120ff7b40cf57a72757493ce31911affe8dfe98017a9c6b2db8985560";
  };

  buildType = "ament_python";
  checkInputs = [ launch launch-ros launch-testing launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python controller-manager controller-manager-msgs lifecycle-msgs python-qt-binding qt-gui rcl-interfaces rclpy ros2service rqt-gui rqt-gui-py ];

  meta = {
    description = "Graphical frontend for interacting with the controller manager.";
    license = with lib.licenses; [ asl20 ];
  };
}
