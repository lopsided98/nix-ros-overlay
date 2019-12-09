
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-py-common, ament-cmake, rqt-gui-py, rcl-interfaces, rclpy, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-rqt-console";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/dashing/rqt_console/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "76504c7586c5247da4313e82120f11ce83199e1496ec3bd6b46c2a35acdd47bf";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui rqt-py-common rqt-gui-py rcl-interfaces rclpy ament-index-python python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
