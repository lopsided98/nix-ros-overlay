
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-pycodestyle";
  version = "0.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pycodestyle/0.16.2-1.tar.gz";
    name = "0.16.2-1.tar.gz";
    sha256 = "73f8fd732334be1555eb5451130972536856a60bc13d88555ca052b884938a90";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.pycodestyle ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
