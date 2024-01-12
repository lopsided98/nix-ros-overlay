
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-iron-rqt-gauges";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_gauges-release/archive/release/iron/rqt_gauges/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "c46108db0c92aaf911917a9c76ef90568693ba330f56d661ab10a5d666336c03";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''Visualization plugin for several sensors.'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
