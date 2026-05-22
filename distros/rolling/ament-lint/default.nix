
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-lint";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "37dc60de73f0f4bd5d181de8bfca441857f5cb44fb5c59a06529f54ace067bf6";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
