
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, pythonPackages, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-rolling-ament-uncrustify";
  version = "0.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_uncrustify/0.16.3-1.tar.gz";
    name = "0.16.3-1.tar.gz";
    sha256 = "95073a3cea8de340334e4843b4adb4be253c2ee40eb04fb96ab9c581eae48063";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = ''The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
