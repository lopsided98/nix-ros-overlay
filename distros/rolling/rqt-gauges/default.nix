
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-gauges";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_gauges-release/archive/release/rolling/rqt_gauges/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "ddb38f8f1133823bdee1a27bb252d5a6ee4ace3af3c3f558ed76a5427906460e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''Visualization plugin for several sensors.'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
