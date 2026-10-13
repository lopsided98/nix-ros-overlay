
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-cpplint";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_cpplint/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "1c7658c5e2e23d7344b40026ed69eeac939e41a6ee3c564560e48bb430cb4dcf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "The ability to check code against the Google style conventions using
    cpplint and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
