
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, python3Packages, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-jazzy-ament-uncrustify";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_uncrustify/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "a8d9cf37bddbbe0f965936f963114c968023d7d2f4236510d05c24e6c8a1d914";
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
