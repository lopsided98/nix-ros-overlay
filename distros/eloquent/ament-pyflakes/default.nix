
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep8, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-ament-pyflakes";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_pyflakes/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "70522e38986ba497bf21c215862a1e1ba6bd7d6adda8ec525cf36c2ac0861e4e";
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
