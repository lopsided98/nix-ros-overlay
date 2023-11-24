
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-pycodestyle, pythonPackages, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-humble-ament-uncrustify";
  version = "0.12.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_uncrustify/0.12.9-1.tar.gz";
    name = "0.12.9-1.tar.gz";
    sha256 = "4a9b29cd5674d01d1e41f279b84989bdbcb0f2df0197919411c379866d38da2c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = ''The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
