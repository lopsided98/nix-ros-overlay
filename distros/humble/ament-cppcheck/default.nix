
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck }:
buildRosPackage {
  pname = "ros-humble-ament-cppcheck";
  version = "0.12.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cppcheck/0.12.5-1.tar.gz";
    name = "0.12.5-1.tar.gz";
    sha256 = "d761b7447c35cc3a624c1d0aa9abd7653e2c488d50821c2cf75d4275950b12d6";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
