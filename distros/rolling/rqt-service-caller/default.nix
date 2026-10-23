
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-service-caller";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/rolling/rqt_service_caller/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "fd20f7f5328d62ccb2254ffaf7386ffd22c73503b529a3493f969e5e78b968ac";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rclpy rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_service_caller provides a GUI plugin for calling arbitrary services.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
