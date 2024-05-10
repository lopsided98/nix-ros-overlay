
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, pythonPackages, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-rolling-ament-uncrustify";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_uncrustify/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "c5df887c3b9145f10c52ee3b65c6ff90d16e57de5c3c3979b6e0832006fd23a8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = "The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
