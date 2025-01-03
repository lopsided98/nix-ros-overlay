
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-jazzy-ros2trace";
  version = "8.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/ros2trace/8.2.3-1.tar.gz";
    name = "8.2.3-1.tar.gz";
    sha256 = "3a8f51f085a94533f858c7440b9414c7976e10f99456783eaee675e37bcae37a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = "The trace command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
