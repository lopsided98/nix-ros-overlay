
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck }:
buildRosPackage {
  pname = "ros-humble-ament-cppcheck";
  version = "0.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cppcheck/0.12.8-1.tar.gz";
    name = "0.12.8-1.tar.gz";
    sha256 = "adef094695774fe8a3c71eaea6d760aea5f7bdfb73ef2db2ffe1d1390ef555d2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
