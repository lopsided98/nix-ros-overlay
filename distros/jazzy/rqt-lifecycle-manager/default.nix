
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, lifecycle-msgs, python-qt-binding, python3Packages, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-jazzy-rqt-lifecycle-manager";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_lifecycle_manager-release/archive/release/jazzy/rqt_lifecycle_manager/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "48abf0ed08d421fd241565d17d72721075d5a609f38c74b65db3092c19b975b3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ lifecycle-msgs python-qt-binding rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt plugin to list ROS 2 lifecycle nodes and change their states from a non-blocking graphical interface.";
    license = with lib.licenses; [ asl20 ];
  };
}
