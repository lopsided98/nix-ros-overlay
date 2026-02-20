
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck }:
buildRosPackage {
  pname = "ros-humble-ament-cppcheck";
  version = "0.12.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cppcheck/0.12.15-1.tar.gz";
    name = "0.12.15-1.tar.gz";
    sha256 = "da6f659a3eeaad3408ca4960baef759c501861c82297d2aa5526bdb63ada7b3d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
