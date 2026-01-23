
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-lint";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_lint/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "44c5c725a106d07b98d9fdc1ee9e0ceaa1070a74e65c74e9f2a1e8eb6fb1648c";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
