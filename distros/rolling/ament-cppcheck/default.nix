
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, ament-xmllint, cppcheck, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-cppcheck";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cppcheck/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "6a8a009988d33933a087d6dba3f1281c45cc32292cd4edfa4b38c71bf291b950";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
