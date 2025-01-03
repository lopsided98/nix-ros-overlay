
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck }:
buildRosPackage {
  pname = "ros-humble-ament-cppcheck";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cppcheck/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "a315882e48caced56337f4c35526619922b60be805a1d7708a354e3907e44f9f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
