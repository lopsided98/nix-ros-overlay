
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-cpplint";
  version = "0.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cpplint/0.16.2-1.tar.gz";
    name = "0.16.2-1.tar.gz";
    sha256 = "565ab1651eee10a754cdaca12f164aff20407259f4d79d72c1da64d9437c44c3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The ability to check code against the Google style conventions using
    cpplint and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
