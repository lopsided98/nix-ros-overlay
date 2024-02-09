
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-lint";
  version = "0.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint/0.16.3-1.tar.gz";
    name = "0.16.3-1.tar.gz";
    sha256 = "f615c28f2950a07a743d56b1c2ae1d7238b6bd3abf4c3a1298401ce6a61780a4";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];

  meta = {
    description = ''Providing common API for ament linter packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
