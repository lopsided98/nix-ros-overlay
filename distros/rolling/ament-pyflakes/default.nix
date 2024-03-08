
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-pyflakes";
  version = "0.16.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pyflakes/0.16.3-2.tar.gz";
    name = "0.16.3-2.tar.gz";
    sha256 = "c24500ed897c7a69fc1c1be428ea7e042a7d209833f28497cee29bee53e577c6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyflakes ];

  meta = {
    description = ''The ability to check code using pyflakes and generate xUnit test
    result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
