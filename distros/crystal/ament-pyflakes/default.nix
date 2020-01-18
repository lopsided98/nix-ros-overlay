
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep8, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-crystal-ament-pyflakes";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_pyflakes/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "cd644a2d4b018df7f1ad0a61a29e866da634fd0358c46c399bcfc41fddfd035c";
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
