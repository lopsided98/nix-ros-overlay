
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-pclint";
  version = "0.12.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_pclint/0.12.6-1.tar.gz";
    name = "0.12.6-1.tar.gz";
    sha256 = "614cd9c985284ba2a93232d5107a7fe0c08c01d3a60cb78bacfc5e0a70eee852";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using PC-lint
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
