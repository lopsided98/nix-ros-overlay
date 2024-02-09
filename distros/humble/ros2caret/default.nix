
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, caret-analyze, caret-msgs, python3Packages, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-humble-ros2caret";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2caret-release/archive/release/humble/ros2caret/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "41bc5103018749665db80182249d8fd56e94bb41977ad94faca5ea0ace470a7a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ caret-analyze caret-msgs python3Packages.tabulate ros2cli tracetools-trace ];

  meta = {
    description = ''ROS 2 CLI package for caret'';
    license = with lib.licenses; [ asl20 ];
  };
}
