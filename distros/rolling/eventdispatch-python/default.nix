
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-eventdispatch-python";
  version = "0.2.29-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/rolling/eventdispatch_python/0.2.29-1.tar.gz";
    name = "0.2.29-1.tar.gz";
    sha256 = "ff08f2626590ce7b02d45fbd220fa2991e9b0c1ffb91012d9f97c3b3e227051a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "python-eventdispatch for ROS2 distribution";
    license = with lib.licenses; [ asl20 ];
  };
}
