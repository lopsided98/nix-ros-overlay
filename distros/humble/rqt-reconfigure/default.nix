
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt-reconfigure";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_reconfigure-release/archive/release/humble/rqt_reconfigure/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "802dd23f447a9046b0dabd35ecf312f76d6a79183c07be905a56b3f6dcfa4e4c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.pyyaml qt-gui-py-common rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''This rqt plugin provides a way to view and edit parameters on nodes.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
