
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck }:
buildRosPackage {
  pname = "ros-rolling-ament-cppcheck";
  version = "0.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cppcheck/0.15.2-1.tar.gz";
    name = "0.15.2-1.tar.gz";
    sha256 = "6fb4b3924ca7c4895db9546b5947d9928e41ef1e32ec0fbb5a4d6ddfc962120e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
