
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, ament-xmllint, cppcheck, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-cppcheck";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cppcheck/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "0eaf15b2a33d326eccc0890bb618bd51c4ac93d7fa4d8dac26a8e040d376275b";
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
