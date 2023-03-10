
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-pclint";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_pclint/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "fdf1323e8a86134c5dd226227a402a77b5b373b469967c73d5ebc9705ff28133";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using pclint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
