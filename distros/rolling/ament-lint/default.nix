
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-lint";
  version = "0.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint/0.16.4-1.tar.gz";
    name = "0.16.4-1.tar.gz";
    sha256 = "03f96a0661825d723f863ffea1d9a24d10c21c3fd8e6416965cd6dfd80c01f23";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
