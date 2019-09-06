
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-xmllint, ament-flake8, rclpy, rqt-gui, qt-gui-py-common, rqt-console, python3Packages, ament-copyright, rqt-py-common, ament-index-python, python-qt-binding }:
buildRosPackage rec {
  pname = "ros-dashing-rqt-reconfigure";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_reconfigure-release/archive/release/dashing/rqt_reconfigure/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "b47bb6d2223c630c1904a16973ef0aac64ed103545763084921a75aaba9c2c96";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-xmllint ament-flake8 ];
  propagatedBuildInputs = [ rqt-gui-py rclpy rqt-gui python3Packages.pyyaml qt-gui-py-common rqt-console ament-index-python rqt-py-common python-qt-binding ];

  meta = {
    description = ''This rqt plugin provides a way to view and edit parameters on nodes.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
