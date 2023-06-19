
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-iron-rqt-reconfigure";
  version = "1.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_reconfigure-release/archive/release/iron/rqt_reconfigure/1.3.3-2.tar.gz";
    name = "1.3.3-2.tar.gz";
    sha256 = "3b380d77436a238932266a39294ca9eb8a0a4e98e585691f578fdbe6392d37ab";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.pyyaml qt-gui-py-common rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''This rqt plugin provides a way to view and edit parameters on nodes.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
