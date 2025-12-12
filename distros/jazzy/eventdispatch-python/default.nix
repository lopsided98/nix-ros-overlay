
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-eventdispatch-python";
  version = "0.2.25-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/jazzy/eventdispatch_python/0.2.25-4.tar.gz";
    name = "0.2.25-4.tar.gz";
    sha256 = "6c4079a11ed8bfb5eb7d0be878866fdae7a8d3e71cd5d7e75ff7a2487a7c84bf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "python-eventdispatch for ROS2 distribution";
    license = with lib.licenses; [ asl20 ];
  };
}
