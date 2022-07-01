
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, chromium, performance-test, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-performance-report";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test-release/archive/release/humble/performance_report/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "dcb7eed87c7a7cc4506451c3aa1e6ee6cfd9baf0eecda56cccc772b1768fa38f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pyyaml pythonPackages.pytest ];
  propagatedBuildInputs = [ chromium performance-test python3Packages.pandas python3Packages.selenium rclpy ];

  meta = {
    description = ''Apex.AI performance_test runner, plotter, and reporter'';
    license = with lib.licenses; [ asl20 ];
  };
}
