
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, caret-analyze, caret-msgs, python3Packages, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-humble-ros2caret";
  version = "0.5.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2caret-release/archive/release/humble/ros2caret/0.5.0-6.tar.gz";
    name = "0.5.0-6.tar.gz";
    sha256 = "2902914f68a199160d89197fd79676105840912ba1768680f35518d6bd933d7c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ caret-analyze caret-msgs python3Packages.tabulate ros2cli tracetools-trace ];

  meta = {
    description = "ROS 2 CLI package for caret";
    license = with lib.licenses; [ asl20 ];
  };
}
