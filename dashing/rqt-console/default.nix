
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, rclpy, rqt-gui, rcl-interfaces, ament-index-python, rqt-py-common, python-qt-binding }:
buildRosPackage rec {
  pname = "ros-dashing-rqt-console";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/dashing/rqt_console/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "124997687ab79baf7eec6ac08c365d1b73763e978e91188fbd6ef33f5949d8f5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py rclpy rqt-gui rcl-interfaces ament-index-python rqt-py-common python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
