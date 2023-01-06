
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, qt-gui, rclpy }:
buildRosPackage {
  pname = "ros-humble-rqt-gui";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/humble/rqt_gui/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "501a7b79d9936f644e1c9ff18056ed1df18a3c47110224bb634c9f9177eec030";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg qt-gui rclpy ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
