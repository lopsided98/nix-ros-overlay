
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-kilted-ros2trace";
  version = "8.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/kilted/ros2trace/8.6.1-1.tar.gz";
    name = "8.6.1-1.tar.gz";
    sha256 = "9b3843078fe6d34a91acb060d3964a681aa7cce1305c2621fa609a6922a32bf4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = "The trace command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
