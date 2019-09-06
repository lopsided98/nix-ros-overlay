
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, ament-flake8, pythonPackages, ament-pep257, ament-copyright }:
buildRosPackage {
  pname = "ros-crystal-ament-clang-format";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_clang_format/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "fb0ce39426f8b95d721329f6ac0f86df6cc5603de6cec10df0e7d7b72caf3b3c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ clang ];

  meta = {
    description = ''The ability to check code against style conventions using
    clang-format and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
