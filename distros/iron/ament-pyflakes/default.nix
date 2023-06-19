
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-pyflakes";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_pyflakes/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "140ade88e8eec980bcd8db8bb0cbb3ac101f72f89398b6a8f21fc6f218f41a2e";
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
