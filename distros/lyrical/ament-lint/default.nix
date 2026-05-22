
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-lint";
  version = "0.20.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_lint/0.20.6-1.tar.gz";
    name = "0.20.6-1.tar.gz";
    sha256 = "effb2e0b4668d0d566603d6e7579acf6de5c217290d8fea35e3e308700b77910";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];

  meta = {
    description = "Providing common API for ament linter packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
