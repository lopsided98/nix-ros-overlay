
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-lyrical-ros2trace";
  version = "8.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/lyrical/ros2trace/8.10.2-1.tar.gz";
    name = "8.10.2-1.tar.gz";
    sha256 = "82fec59a5230ae46d92a2c9126e1bc11d853abfb469faf920eae896ed86ee818";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = "The trace command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
