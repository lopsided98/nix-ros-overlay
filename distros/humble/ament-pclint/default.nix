
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-ament-pclint";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_pclint/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "40e215d9cf732452da534e8ae300905ef2b95c6ff1cc45688b1c488525d3a5e4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using PC-lint
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
