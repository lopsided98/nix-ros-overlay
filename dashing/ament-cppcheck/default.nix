
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck }:
buildRosPackage {
  pname = "ros-dashing-ament-cppcheck";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cppcheck/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "7701d462f1f264ccba4fe5bcb91fd3b0b2159a47163db3f7aff570a9ef7c22a9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = ''The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
