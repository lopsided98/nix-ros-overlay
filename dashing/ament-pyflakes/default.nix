
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep8, pythonPackages, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-pyflakes";
  version = "0.7.9-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_pyflakes/0.7.9-1.tar.gz;
    sha256 = "a6337f102f4fea9ea6f5feefa5f26ef08ed20eb514d4f8cba3d587efec247222";
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
