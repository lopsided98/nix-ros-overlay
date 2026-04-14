
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-ament-lint";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/kilted/ament_lint/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "0db904c9ece06441c4ac23f8e29e1336e8f9782e08242abc77b57d1210d9b23a";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
