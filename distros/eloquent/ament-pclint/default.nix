
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-ament-pclint";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_pclint/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "e7e2fa4f3e6489f5e159d311cc34ed503033e8f0cecbc61c9599c7651d20e7a2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using pclint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
