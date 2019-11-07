
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep8, pythonPackages, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-pyflakes";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_pyflakes/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "7f8df5468f4437700ab4f78ac5c5aa1fa537551e365daf3c486678e3933463f7";
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
