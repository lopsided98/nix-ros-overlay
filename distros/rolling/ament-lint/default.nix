
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-lint";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "966c3a244a1ca0c3cc555953eee48b7c9f2ed7ea1d8d2d05184dc4a678330fb9";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
