# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchFromGitHub, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, qt-gui, rclpy }:
buildRosPackage {
  pname = "ros-humble-easy-handeye2";
  version = "1.1.7-r1";

  src = fetchFromGitHub {
    owner = "Thieso";
    repo = "easy_handeye2";
    rev = "f8ce95b";
    hash = "sha256-Y43jFDMOf+zyxWhkglMbCNygBvauRZ40Brm2MLNrT4I=";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg qt-gui rclpy ];

  meta = {
    description = "rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
