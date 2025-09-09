
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, ament-xmllint, cppcheck, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-ament-cppcheck";
  version = "0.19.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/kilted/ament_cppcheck/0.19.2-2.tar.gz";
    name = "0.19.2-2.tar.gz";
    sha256 = "145858d705927e54e5847250e09880751b86512c7edbc37a8009e11a3927b0a0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
