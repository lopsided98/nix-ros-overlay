
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, python3Packages, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-jazzy-ament-uncrustify";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_uncrustify/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "a7623e60bccdd338076c18a31a9b8f2dfa3b451fa4787a926da21d31fb6da84d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle python3Packages.pytest ];
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = "The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
