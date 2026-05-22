
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-cpplint";
  version = "0.20.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_cpplint/0.20.6-1.tar.gz";
    name = "0.20.6-1.tar.gz";
    sha256 = "bcd5752cf6737c5314e6e559faf90f8395493abe93d25312a1579a57bf21ff8d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "The ability to check code against the Google style conventions using
    cpplint and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
