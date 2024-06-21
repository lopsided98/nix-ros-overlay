
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pycodestyle";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pycodestyle/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "905591ae0ec8a97e8ef71e2e63a496982ec1e3eecd389616dba01de8ca3ca215";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.pycodestyle ];

  meta = {
    description = "The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
