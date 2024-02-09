
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-pyflakes";
  version = "0.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_pyflakes/0.16.3-1.tar.gz";
    name = "0.16.3-1.tar.gz";
    sha256 = "1a7da8b0853aac9457beb4e4899e4ade7daacb002c93b2f55257f21c29839ade";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyflakes ];

  meta = {
    description = ''The ability to check code using pyflakes and generate xUnit test
    result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
