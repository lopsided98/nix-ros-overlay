
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-jazzy-rqt-gauges";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_gauges-release/archive/release/jazzy/rqt_gauges/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "8d8694767b9b30ee07e466bbd596d33d956ecd7424edd61e435b4a0214ca99e7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Visualization plugin for several sensors.";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
