
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-ament-lint";
  version = "0.17.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_lint/0.17.0-2.tar.gz";
    name = "0.17.0-2.tar.gz";
    sha256 = "7defc55c115775bc7dbc06e0f9d8ae38a2f4e377753ae95b7ba61c0c9fdd9576";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
