
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-humble-rqt-gauges";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_gauges-release/archive/release/humble/rqt_gauges/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "871aafc465d5f4a8f2b57ec41452bf5ab40083e201854efe96778b21813e515f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''Visualization plugin for several sensors.'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
