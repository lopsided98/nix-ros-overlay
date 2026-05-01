
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-lint";
  version = "0.20.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_lint/0.20.5-4.tar.gz";
    name = "0.20.5-4.tar.gz";
    sha256 = "2a193c124da3cc76b205d1bfcec07188a1714991831fd4590e3b8cb1435e6405";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
