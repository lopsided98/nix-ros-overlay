
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, lifecycle-msgs, python-qt-binding, python3Packages, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-lifecycle-manager";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_lifecycle_manager-release/archive/release/rolling/rqt_lifecycle_manager/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "d9eb94c935c8b81fea951f1f594d3705e597244561d0f47d16a28e26a151a512";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ lifecycle-msgs python-qt-binding rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt plugin to list ROS 2 lifecycle nodes and change their states from a non-blocking graphical interface.";
    license = with lib.licenses; [ asl20 ];
  };
}
