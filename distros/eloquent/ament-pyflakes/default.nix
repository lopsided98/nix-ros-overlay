
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep8, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-ament-pyflakes";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_pyflakes/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "111c06c36ff6ba0add73958d5bb2f721270e7f1fd31003975982bad4a18d9ad8";
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
