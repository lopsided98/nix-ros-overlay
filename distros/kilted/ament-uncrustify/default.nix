
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, ament-xmllint, python3Packages, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-kilted-ament-uncrustify";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/kilted/ament_uncrustify/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "cc6a1b42da6d2b2d22b6d4ae6488e88c23f3169e36536ebb4138e965306053f1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = "The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
