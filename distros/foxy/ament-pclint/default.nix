
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-pclint";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_pclint/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "2a1e0a247f7967924b513ee9fa60a42e7ddabecd34d8b9cb2b71c7db9d10ab46";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using pclint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
