
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-rolling-ros2trace";
  version = "8.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/ros2trace/8.0.0-1.tar.gz";
    name = "8.0.0-1.tar.gz";
    sha256 = "4d126b176ad14d2408fbfeed352a9b11821ef94f5ae61063b700a2eecd1811d3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = ''The trace command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
