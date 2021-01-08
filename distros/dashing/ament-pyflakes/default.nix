
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep8, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-ament-pyflakes";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_pyflakes/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "a447f277bd5d412c3a09fab40e4bbe8930dbca547108375ed9d6f2a2c3a3a320";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pep8 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyflakes ];

  meta = {
    description = ''The ability to check code using pyflakes and generate xUnit test
    result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
