
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-eventdispatch-python";
  version = "0.2.31-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/jazzy/eventdispatch_python/0.2.31-1.tar.gz";
    name = "0.2.31-1.tar.gz";
    sha256 = "366948dc9a1c11768241a3e79af6b5eae6b36e04a5fe655b5e44e9cc7bc1f807";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "python-eventdispatch for ROS2 distribution";
    license = with lib.licenses; [ asl20 ];
  };
}
