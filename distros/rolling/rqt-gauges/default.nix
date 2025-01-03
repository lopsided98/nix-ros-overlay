
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-gauges";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_gauges-release/archive/release/rolling/rqt_gauges/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "46ecd6bbfba2041ab327e216fa3b16bf85797e0d0e8ea85083b81c8836a6f5e0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Visualization plugin for several sensors.";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
