
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck }:
buildRosPackage {
  pname = "ros-eloquent-ament-cppcheck";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_cppcheck/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "3fe10e69d2e629f95da2b2b3e297e128c269c410ec50cd68e50a0a9cbbd39cb1";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
