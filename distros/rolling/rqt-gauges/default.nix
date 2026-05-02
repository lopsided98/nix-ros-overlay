
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-gauges";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_gauges-release/archive/release/rolling/rqt_gauges/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "c66c5452f2f3a20fdaafec6d994385710811508b6d9d336f16ef6f70887f3e6a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Visualization plugin for several sensors.";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
