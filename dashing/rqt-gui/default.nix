
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, rclpy, qt-gui, python3Packages, ament-index-python, ament-lint-auto, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-rqt-gui";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/dashing/rqt_gui/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "e7efeebc99ec302d1e1a3de86ca474a3434143ba1c5e885c0edec9e3f68611fb";
  };

  buildType = "ament_python";
  buildInputs = [ qt-gui ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3Packages.catkin-pkg rclpy qt-gui ament-index-python python-qt-binding ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
