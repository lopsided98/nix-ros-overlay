
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-cpplint";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cpplint/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "784d360c83b2c08f0d54dbd1fcf4d170f4eb4c5602b14d8c605e1cb49e20a7b7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "The ability to check code against the Google style conventions using
    cpplint and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
