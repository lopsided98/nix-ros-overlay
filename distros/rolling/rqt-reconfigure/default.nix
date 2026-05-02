
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-reconfigure";
  version = "1.8.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_reconfigure-release/archive/release/rolling/rqt_reconfigure/1.8.4-2.tar.gz";
    name = "1.8.4-2.tar.gz";
    sha256 = "7cb3d9885020ba720a1d05a7b813720698e375af4c7fa6d89335cb3dce7959a7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.pyyaml qt-gui-py-common rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "This rqt plugin provides a way to view and edit parameters on nodes.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
