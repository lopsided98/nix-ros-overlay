
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, ament-flake8, pythonPackages, ament-pep257, python3Packages, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-clang-tidy";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_clang_tidy/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "4d82bc6b39879e7a671046cab69b32b1ec63f0a458cfc9f1de15e45296691f25";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ python3Packages.pyyaml clang ];

  meta = {
    description = ''The ability to check code against style conventions using
    clang-tidy and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
