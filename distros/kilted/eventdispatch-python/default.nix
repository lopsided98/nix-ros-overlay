
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-eventdispatch-python";
  version = "0.2.29-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/kilted/eventdispatch_python/0.2.29-1.tar.gz";
    name = "0.2.29-1.tar.gz";
    sha256 = "c35082a3d98e4b14160fddb3a12dea1ecf25c83ed416b8e26a31ea0d8ed185ad";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "python-eventdispatch for ROS2 distribution";
    license = with lib.licenses; [ asl20 ];
  };
}
