
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-eventdispatch-python";
  version = "0.2.29-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/jazzy/eventdispatch_python/0.2.29-1.tar.gz";
    name = "0.2.29-1.tar.gz";
    sha256 = "7bcafdbc061a90cd4353fbcadf2e0a5ba5e48127566e29812436fed1e7320e7b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "python-eventdispatch for ROS2 distribution";
    license = with lib.licenses; [ asl20 ];
  };
}
