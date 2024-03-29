
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, pythonPackages, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-rolling-ament-uncrustify";
  version = "0.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_uncrustify/0.16.4-1.tar.gz";
    name = "0.16.4-1.tar.gz";
    sha256 = "cf7da6ff06b2b83cfd3228dac666c10c12787ba17a8ab0eaabaf1395026e94f2";
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
