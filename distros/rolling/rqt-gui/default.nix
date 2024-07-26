
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, qt-gui, rclpy }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "34f2b3e21f23ac9e0431d548d5ec2ece6d22603aed8a7b71c896949a3943a00d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg qt-gui rclpy ];

  meta = {
    description = "rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
