
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, controller-manager, controller-manager-msgs, launch, launch-ros, launch-testing, launch-testing-ros, lifecycle-msgs, python-qt-binding, python3Packages, qt-gui, rcl-interfaces, rclpy, ros2service, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-lyrical-rqt-controller-manager";
  version = "6.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/lyrical/rqt_controller_manager/6.14.0-1.tar.gz";
    name = "6.14.0-1.tar.gz";
    sha256 = "5ba6df71fe23ab3075dd260a778c0e4ded6f5346a4366ea6d41747f78d04f10b";
  };

  buildType = "ament_python";
  checkInputs = [ launch launch-ros launch-testing launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python controller-manager controller-manager-msgs lifecycle-msgs python-qt-binding qt-gui rcl-interfaces rclpy ros2service rqt-gui rqt-gui-py ];

  meta = {
    description = "Graphical frontend for interacting with the controller manager.";
    license = with lib.licenses; [ asl20 ];
  };
}
