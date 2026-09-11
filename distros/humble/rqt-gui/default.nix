
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, qt-gui, rclpy }:
buildRosPackage {
  pname = "ros-humble-rqt-gui";
  version = "1.1.10-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/humble/rqt_gui/1.1.10-2.tar.gz";
    name = "1.1.10-2.tar.gz";
    sha256 = "44da961c992a1c06cfef8a5d6bed65647ea8c4e4cf17ea41ce4c255f50b8383d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg qt-gui rclpy ];

  meta = {
    description = "rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
